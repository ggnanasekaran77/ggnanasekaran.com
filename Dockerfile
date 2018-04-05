FROM docker.io/nginx
ADD conf.d/ /etc/nginx/conf.d/
ADD html/ /usr/share/nginx/html/
ADD nginx.conf /etc/nginx/nginx.conf
RUN set -x \
    && mkdir -p /etc/nginx/ssl \
    && chmod -R 755 /usr/share/nginx/html
ADD ssl/ /etc/nginx/ssl/
