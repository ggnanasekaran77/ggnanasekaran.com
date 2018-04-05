FROM docker.io/nginx
ADD conf.d/ /etc/nginx/conf.d/
ADD html/ /usr/share/nginx/html/
RUN set -x \
    && mkdir -p /etc/nginx/ssl
ADD ssl/ /etc/nginx/ssl/
