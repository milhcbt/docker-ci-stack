FROM php:7.1.9-cli
COPY config/php.ini /usr/local/etc/php/

RUN apt-get update && apt-get install -y \
    zip

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug
RUN curl -sS https://getcomposer.org/installer | php \
   && mv composer.phar /usr/bin/composer


## CREATE APP USER ##

# Create the home directory for the new app user.
RUN mkdir -p /home/app

# Create an app user so our program doesn't run as root.
RUN groupadd -r app &&\
    useradd -r -g app -d /home/app -s /sbin/nologin -c "Docker image user" app

# Set the home directory to our app user's home.
ENV HOME=/home/app
ENV APP_HOME=/home/app/my-project

## SETTING UP THE APP ##
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
#VOLUME $APP_HOME

# ***
# Do any custom logic needed prior to adding your code here
# ***

# Copy in the application code.
#ADD . $APP_HOME
#COPY src/ $APP_HOME

# Chown all the files to the app user.
RUN chown -R app:app $APP_HOME
RUN mkdir /home/app/.composer \
    && chown -R app:app /home/app/.composer


# Change to the app user.
USER app
EXPOSE 8888
#RUN composer install --no-interaction
CMD bin/console server:run 0.0.0.0:8888

