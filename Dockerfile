# Use official PHP image with Apache
FROM php:8.1-apache

# Enable mysqli extension for MySQL connection
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy project files into container
COPY ./src /var/www/html/

# Give permissions
RUN chown -R www-data:www-data /var/www/html
