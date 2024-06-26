FROM php:8.2-apache
LABEL maintainer="@camilymilsoni"
RUN apt update
RUN apt install git -y
WORKDIR /var/www/html
COPY src/. ./
RUN rm -rf ./modelo
EXPOSE 80
CMD [ "apache2ctl","-D", "FOREGROUND" ]