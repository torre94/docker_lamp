FROM php:7.2-apache

LABEL maintainer="Lorenzo Torregiani"

# Prepare apt
RUN apt-get update

# Prepare fake SSL certificate
RUN apt-get install -y ssl-cert

# Setup Apache2 mod_ssl
RUN a2enmod ssl

# Setup Apache2 HTTPS env
RUN a2ensite default-ssl.conf

# Update PHP settings
RUN cp $PHP_INI_DIR/php.ini-production $PHP_INI_DIR/php.ini \
 && sed -i -e "s/^ *memory_limit.*/memory_limit = 512M/g" $PHP_INI_DIR/php.ini \
 && sed -i -e "s/^ *max_execution_time.*/max_execution_time = 120/g" $PHP_INI_DIR/php.ini \
 && sed -i -e "s/^ *post_max_size.*/post_max_size = 64M/g" $PHP_INI_DIR/php.ini \
 && sed -i -e "s/^ *upload_max_filesize.*/upload_max_filesize = 64M/g" $PHP_INI_DIR/php.ini

# Work directory
WORKDIR /var/www/html