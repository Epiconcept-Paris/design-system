FROM httpd:2-alpine

ENV TZ=Europe/Paris
RUN apk add --no-cache tzdata \
    && cp /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone \
    && apk del tzdata

# Copy apache vhost file to proxy php requests to php-fpm container
COPY ./default.conf /usr/local/apache2/conf/default.apache.conf

# On remplace la configuration par défaut d'Apache par la notre
RUN echo "Include /usr/local/apache2/conf/default.apache.conf" \
    >> /usr/local/apache2/conf/httpd.conf

# Create users, directories and update permissions
RUN addgroup -g 1000 app \
    && adduser -D -H -h /var/www/app -s /sbin/nologin -G app -u 1000 app \
    && mkdir -p /var/www/app/public /usr/local/apache2/logs \
    && chown -R app:app /var/www/app /usr/local/apache2/logs

# Change owner and group
USER app:app

ENV FPM_CONTAINER_NAME=defaultvalue

# Change workdir
WORKDIR /var/www/app
