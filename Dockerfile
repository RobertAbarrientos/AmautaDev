# ============================================
# ETAPA 1: Backend - PHP + Composer
# ============================================
FROM php:8.3-apache AS backend
WORKDIR /var/www/html

RUN apt-get update && apt-get install -y \
    git unzip libpng-dev libonig-dev libxml2-dev zip curl && \
    docker-php-ext-install pdo pdo_mysql mbstring exif pcntl bcmath gd

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

COPY composer.json composer.lock ./
RUN composer install --no-dev --optimize-autoloader

COPY . .
RUN php artisan key:generate

# ============================================
# ETAPA 2: Frontend - Node + Vite
# ============================================
FROM node:22-alpine AS frontend
WORKDIR /app
COPY --from=backend /var/www/html /app
RUN npm install --legacy-peer-deps
RUN npm run build

# ============================================
# ETAPA 3: Producción - PHP con Apache
# ============================================
FROM php:8.3-apache
WORKDIR /var/www/html

RUN apt-get update && apt-get install -y \
    git unzip libpng-dev libonig-dev libxml2-dev zip curl && \
    docker-php-ext-install pdo pdo_mysql mbstring exif pcntl bcmath gd

COPY --from=backend /var/www/html /var/www/html
COPY --from=frontend /app/public /var/www/html/public

RUN chmod -R 755 /var/www/html/storage /var/www/html/bootstrap/cache

EXPOSE 80
CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=80"]
