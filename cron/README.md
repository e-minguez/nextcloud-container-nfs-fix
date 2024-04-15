https://github.com/nextcloud/server/blob/master/cron.php

```shell
VERSION="27.1.8"
rm -f cron.php.orig-as-of-*
curl https://raw.githubusercontent.com/nextcloud/server/v${VERSION}/cron.php -o cron.php.orig-as-of-$(date +%Y-%m-%d)
sed -e '/Owner id of/,+1d' cron.php.orig-as-of-* > cron.php
diff -Naur cron.php.orig-as-of-* cron.php > cron.php.patch
```
