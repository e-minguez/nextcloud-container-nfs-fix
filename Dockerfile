FROM docker.io/library/nextcloud:fpm-alpine
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
