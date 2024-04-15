https://github.com/nextcloud/docker/blob/master/docker-entrypoint.sh

```shell
VERSION=26
rm -f entrypoint.sh.orig-as-of-*
curl https://raw.githubusercontent.com/nextcloud/docker/master/${VERSION}/fpm-alpine/entrypoint.sh -o entrypoint.sh.orig-as-of-$(date +%Y-%m-%d)
sed -e 's/og --chown \$user:\$group//g' entrypoint.sh.orig-as-of-* > entrypoint.sh
diff -Naur entrypoint.sh.orig-as-of-* entrypoint.sh > entrypoint.sh.patch
```
