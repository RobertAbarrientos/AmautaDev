# ============================================
# ETAPA 1: Backend - PHP + Composer
# ============================================
FROM php:8.3-apache AS backend
WORKDIR /var/www/html

# Instalar dependencias del sistema
RUN apt-get update && apt-get install -y \
    git unzip libpng-dev libonig-dev libxml2-dev zip curl && \
    docker-php-ext-install pdo pdo_mysql mbstring exif pcntl bcmath gd

# Instalar Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Copiar archivos necesarios para Composer
COPY composer.json composer.lock ./

# Instalar dependencias PHP (incluye Ziggy)
RUN composer install --no-dev --optimize-autoloader

# Copiar todo el proyecto
COPY . .

# Generar APP_KEY
RUN php artisan key:generate

# ============================================
# ETAPA 2: Frontend - Node + Vite
# ============================================
FROM node:22-alpine AS frontend
WORKDIR /app

# Copiar el código del backend (ya con vendor)
COPY --from=backend /var/www/html /app

# Instalar dependencias NPM
RUN npm install --legacy-peer-deps

# Compilar assets
RUN npm run build

# ============================================
# ETAPA 3: Producción - PHP con Apache
# ============================================
FROM php:8.3-apache
WORKDIR /var/www/html

# Instalar extensiones PHP necesarias
RUN apt-get update && apt-get install -y \
    git unzip libpng-dev libonig-dev libxml2-dev zip curl && \
    docker-php-ext-install pdo pdo_mysql mbstring exif pcntl bcmath gd

# Copiar backend (Laravel) y vendor desde la etapa 1
COPY --from=backend /var/www/html /var/www/html

# Copiar frontend (public/) desde la etapa 2
COPY --from=frontend /app/public /var/www/html/public

# Permisos
RUN chmod -R 755 /var/www/html/storage /var/www/html/bootstrap/cache

# Exponer puerto
EXPOSE 80

# Iniciar servidor Laravel
CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=80"]
