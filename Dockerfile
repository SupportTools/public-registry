FROM nginx:1.16.1-alpine

RUN chmod -R a+w /var/cache/nginx/ \
        && touch /var/run/nginx.pid \
        && chmod a+w /var/run/nginx.pid \
        && rm /etc/nginx/conf.d/*

COPY router.conf /etc/nginx/conf.d/
EXPOSE 80
USER nginx
