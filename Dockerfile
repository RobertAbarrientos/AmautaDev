# Etapa 1: construir assets de frontend
FROM node:22-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm install --legacy-peer-deps
COPY . .
RUN npm run build

# Etapa 2: entorno PHP con Apache
FROM php:8.3-apache
WORKDIR /var/www/html

# Instalar dependencias y extensiones requeridas
RUN apt-get update && apt-get install -y \
    git unzip libpng-dev libonig-dev libxml2-dev zip curl && \
    docker-php-ext-install pdo pdo_mysql mbstring exif pcntl bcmath gd

# Instalar Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Copiar archivos del proyecto
COPY . .

# Instalar dependencias de PHP (Composer) antes de copiar el build
RUN composer install --no-dev --optimize-autoloader
RUN php artisan key:generate

# Copiar el build del frontend
COPY --from=build /app/public /var/www/html/public

# Permisos
RUN chmod -R 755 /var/www/html/storage /var/www/html/bootstrap/cache

# Exponer puerto 80
EXPOSE 80

# Comando final
CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=80"]
