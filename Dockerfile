FROM nginx

LABEL authors="Ghardadou Aymne" \
      Maintainer="" \
      version="1.0.0" \
      name="cors-NGINX" \
      Url=""

COPY static-html-directory /usr/share/nginx/html

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf

RUN touch /var/run/nginx.pid && \
chmod -R 777 var/ && \
chmod 777 var/run/nginx.pid

HEALTHCHECK --interval=1m --timeout=5s --retries=3 CMD service nginx status || exit 1

EXPOSE 8080
