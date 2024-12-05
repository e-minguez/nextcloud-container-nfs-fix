Using nextcloud in containers with NFS as backend storage for `/var/www/html` (with proper `anonuid=82` and `anongid=0` to match `www-data:root` ownership), the rsync process complains:

```
rsync: chown "/var/www/html/whatever" failed: Operation not permitted (1)
```

Using the NFS flags already mentioned ensures the ownership so there is no need to change it (and if you want to do it, it fails).

I guess having an environment variable that is used by the entrypoint.sh script can be good enough (?)

See https://github.com/nextcloud/docker/issues/1344

Meanwhile, I keep my own `entrypoint.sh` fork.


Also, a few manual tweaks are needed:

* https://github.com/nextcloud/server/issues/24914
* https://github.com/nextcloud/server/issues/24915


The image is already available at https://quay.io/repository/e_minguez/nextcloud-container-nfs-fix

```
podman pull quay.io/eminguez/nextcloud-container-fix-nfs
```

Latest version: 30.0.2
