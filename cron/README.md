https://github.com/nextcloud/server/blob/master/cron.php

```shell
rm -f cron.php.orig-as-of-*
curl https://raw.githubusercontent.com/nextcloud/server/master/cron.php -o cron.php.orig-as-of-$(date +%Y-%m-%d)
sed -e '/Owner id of config/,+1d' cron.php.orig-as-of-* > cron.php
diff -Naur cron.php.orig-as-of-* cron.php > cron.php.patch
```
