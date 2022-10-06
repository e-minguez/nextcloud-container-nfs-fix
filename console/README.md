https://github.com/nextcloud/server/blob/master/console.php

```shell
rm -f console.php.orig-as-of-*
curl https://raw.githubusercontent.com/nextcloud/server/master/console.php -o console.php.orig-as-of-$(date +%Y-%m-%d)
sed -e '/If running with/,+1d' console.php.orig-as-of-* > console.php
diff -Naur console.php.orig-as-of-* console.php > console.php.patch
```
