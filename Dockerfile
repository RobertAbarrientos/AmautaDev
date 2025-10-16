# ============================================
# ETAPA 1 - BACKEND (Composer)
# ============================================
FROM php:8.3-apache AS backend
WORKDIR /var/www/html

# Instalar dependencias del sistema
RUN apt-get update && apt-get install -y \
    git unzip libpng-dev libonig-dev libxml2-dev zip curl && \
    docker-php-ext-install pdo pdo_mysql mbstring exif pcntl bcmath gd

# Instalar Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Copiar y preparar dependencias PHP
COPY composer.json composer.lock ./
RUN composer install --no-dev --optimize-autoloader

# Copiar todo el proyecto
COPY . .

# Generar clave de aplicación
RUN php artisan key:generate

# ============================================
# ETAPA 2 - FRONTEND (Vite)
# ============================================
FROM node:22-alpine AS frontend
WORKDIR /app
COPY package*.json ./
RUN npm install --legacy-peer-deps
COPY . .
RUN npm run build

# ============================================
# ETAPA 3 - IMAGEN FINAL (Producción)
# ============================================
FROM php:8.3-apache
WORKDIR /var/www/html

# Instalar extensiones PHP necesarias
RUN apt-get update && apt-get install -y \
    git unzip libpng-dev libonig-dev libxml2-dev zip curl && \
    docker-php-ext-install pdo pdo_mysql mbstring exif pcntl bcmath gd

# Copiar el backend (Laravel) desde la etapa 1
COPY --from=backend /var/www/html /var/www/html

# Copiar el frontend compilado desde la etapa 2
COPY --from=frontend /app/public /var/www/html/public

# Permisos de escritura
RUN chmod -R 755 /var/www/html/storage /var/www/html/bootstrap/cache

# Puerto expuesto
EXPOSE 80

# Iniciar Laravel con Artisan
CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=80"]
