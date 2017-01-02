# Digital App Docker container for Drupal 8.

FROM php:7-apache


# Installing core unix applications into the Docker container.

RUN apt-get update && apt-get install -yqq --no-install-recommends \
  rsyslog \
  rsync \
  supervisor \
  cron \
  mysql-client \
  libpng-dev \
  libfreetype6-dev \
  libjpeg62-turbo-dev \
  libpng12-dev \
  locales \
  git \
  && a2enmod rewrite \
  && a2enmod expires \
  && a2enmod headers \
  && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
  && docker-php-ext-install mysqli pdo_mysql zip mbstring gd exif pcntl opcache \
  && pecl install apcu xdebug \
  && echo extension=apcu.so > /usr/local/etc/php/conf.d/apcu.ini \
  && apt-get clean autoclean && apt-get autoremove -y \
  && rm -rf /var/lib/apt/lists/*

# Installing the php extensions needed for enabling ldap.
RUN \
    apt-get update && \
    apt-get install libldap2-dev -y && \
    rm -rf /var/lib/apt/lists/* && \
    docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ && \
    docker-php-ext-install ldap


# Adding a PHP extension to track progress of a file uploads. This no longer comes as standard with PHP 7.

RUN git clone https://github.com/Jan-E/uploadprogress.git /tmp/php-uploadprogress && \
  cd /tmp/php-uploadprogress && \
  phpize && \
  ./configure --prefix=/usr && \
  make && \
  make install && \
  echo 'extension=uploadprogress.so' > /usr/local/etc/php/conf.d/uploadprogress.ini && \
  rm -rf /tmp/*



# Updating the 'out-of-the-box' PHP 7 docker container with our own container config.

COPY container/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY container/bootstrap.sh /bootstrap.sh
COPY container/xdebug.sh /var/www/xdebug.sh
COPY container/opcache.ini /usr/local/etc/php/conf.d/opcache.ini
COPY container/rsyslog.conf /etc/rsyslog.conf
COPY container/php.ini /usr/local/etc/php/php.ini

COPY container/crontab.txt /var/crontab.txt
RUN crontab /var/crontab.txt && chmod 600 /etc/crontab

COPY container/default.conf /etc/apache2/sites-available/000-default.conf
RUN a2ensite 000-default.conf


# Copying the Digital App into the correct Apache web folders.

COPY . /var/www/html/


# Downloading Composer and using it to install an 'out-of-the-box' Drupal 8 build.

RUN php -r "readfile('https://getcomposer.org/installer');" | php && mv composer.phar /usr/local/bin/composer
RUN composer install -d /var/www/html --prefer-dist
RUN ln -s ~www-data/html/vendor/bin/drush /usr/local/bin/drush
RUN ln -s ~www-data/html/vendor/bin/drupal /usr/local/bin/drupal
COPY container/drushrc.php /etc/drush/drushrc.php



# Exposing the container via port 80.

EXPOSE 80

CMD ["/usr/bin/supervisord"]