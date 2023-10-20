#FROM nginx:alpine
#
#RUN docker-php-ext-install mysqli
#
#EXPOSE 80
#
#COPY nginx-reverse-proxy.conf /etc/nginx/nginx.conf
#
#COPY ./static_pages/contacts.html /usr/share/nginx/html/
#
#COPY ./static_pages/delivery.html /usr/share/nginx/html/


FROM php:7.4-apache
RUN docker-php-ext-install mysqli

COPY ./static_pages/index.php /var/www/html

EXPOSE 80
