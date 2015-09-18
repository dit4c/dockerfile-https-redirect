#!/bin/sh

docker run -i --rm alpine:3.2 /bin/sh > rootfs.tar.xz <<SCRIPT
set -e

sh >&2 <<INSTALL
set -e
export GOPATH=/tmp
apk add --update go git tar xz
go get -v github.com/pwaller/https-redirect
mkdir /tmp/lib
ls /tmp/bin
ldd /tmp/bin/https-redirect
cp /lib/ld-musl-x86_64.so.1 /tmp/lib
tar cJf rootfs.tar.xz -C /tmp bin lib
ls -laR /tmp
tar tvf rootfs.tar.xz
INSTALL

cat rootfs.tar.xz
SCRIPT



