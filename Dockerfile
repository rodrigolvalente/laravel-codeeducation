FROM php:7.4.6-fpm-alpine

RUN apk add --no-cache openssl bash mysql-client \
    && docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www
RUN rm -rf /var/www/html

COPY . /var/www
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN ln -s public html

EXPOSE 9000
ENTRYPOINT ["php-fpm"]
