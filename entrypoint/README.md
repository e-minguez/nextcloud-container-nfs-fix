https://github.com/nextcloud/docker/blob/master/docker-entrypoint.sh

```shell
rm -f entrypoint.sh.orig-as-of-*
curl https://raw.githubusercontent.com/nextcloud/docker/master/docker-entrypoint.sh -o entrypoint.sh.orig-as-of-$(date +%Y-%m-%d)
gsed -e '173 a\\trsync_options="-rlD"' entrypoint.sh.orig-as-of-* > entrypoint.sh
diff -Naur entrypoint.sh.orig-as-of-* entrypoint.sh > entrypoint.sh.patch
```
