FROM phusion/baseimage

MAINTAINER Florian Kasper <florian@xpandmmi.com>


RUN apt-get update -qq


COPY 01-build.sh /stage
RUN /stage
RUN rm /stage

COPY 02-compile.sh /stage
RUN /stage
RUN rm /stage

COPY 03-configure.sh /stage
RUN /stage
RUN rm /stage


COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/conf.d /etc/nginx/conf.d
COPY nginx/includes /etc/nginx/includes


RUN mkdir /var/www
VOLUME /etc/nginx/sites-enabled
VOLUME /var/www

CMD ["nginx", "-g", "daemon off; error_log /dev/stderr info;"]
