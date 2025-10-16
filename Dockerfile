# Etapa 1: construir assets
FROM node:22-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm install --legacy-peer-deps
COPY . .
RUN npm run build

# Etapa 2: entorno PHP
FROM php:8.3-apache
WORKDIR /var/www/html

# Instalar extensiones necesarias de Laravel
RUN apt-get update && apt-get install -y \
    git unzip libpng-dev libonig-dev libxml2-dev zip curl && \
    docker-php-ext-install pdo pdo_mysql mbstring exif pcntl bcmath gd

# Instalar Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Copiar archivos de Laravel
COPY . .

# Copiar los assets construidos
COPY --from=build /app/public /var/www/html/public

# Configuración de permisos y variables
RUN chmod -R 755 /var/www/html/storage /var/www/html/bootstrap/cache

# Generar key y optimizar
RUN composer install --no-dev --optimize-autoloader
RUN php artisan key:generate

EXPOSE 80
CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=80"]
