FROM docker.io/library/nextcloud:26-fpm-alpine
COPY entrypoint/entrypoint.sh /
COPY console/console.php /usr/src/nextcloud/
COPY cron/cron.php /usr/src/nextcloud/
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
