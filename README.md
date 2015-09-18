# dit4c/https-redirect

[![](https://badge.imagelayers.io/dit4c/https-redirect:latest.svg)](https://imagelayers.io/?images=dit4c/https-redirect:latest)

[Peter Waller's https-redirect](https://github.com/pwaller/https-redirect) compiled against muslc, run with uid 99 (commonly "nobody") on port 3000.

That's it. Two files in a from-scratch image. No busybox or anything else.

Run it with:

```
docker run -d --name https-redirect -p 80:3000 dit4c/https-redirect
```

Don't trust my binary rootfs.tar.xz? Build your own with [build_tarball.sh](https://github.com/dit4c/dockerfile-https-redirect/blob/master/build_tarball.sh).
