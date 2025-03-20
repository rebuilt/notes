# Alpine linux setup

## Initial Setup
https://wiki.alpinelinux.org/wiki/Alpine_setup_scripts#setup-apkrepos

## Sway window manager
Edit the config to start services for application backends.  This was required for the zoom flatpack to work properly (fixed screen sharing)

## Utility for setting up screens in sway
https://github.com/nwg-piotr/nwg-displays
## i3 support for autotiling
https://github.com/altdesktop/i3ipc-python

## Improve startup time
edit config file to reduce number of retries for networking and reprioritize which network type (wifi, eth) it will attempt to connect to first.

/etc/rc.conf

## Scanner
doas apk add sane sane-backend-genesys colord-sane simple-scan
sane-find-scanner
scanimage -L
simple-scan

## Mount USB devices
https://cheat.sh/udisksctl

## Various fixes
https://wiki.alpinelinux.org/wiki/How_to_get_regular_stuff_working#Disk_Management

## Install haskell
https://markbucciarelli.com/posts/2017-04-05_haskell_on_alpine_linux.html

## Change default shell to bash
https://wiki.alpinelinux.org/wiki/Change_default_shell

## Running glibc programs
https://wiki.alpinelinux.org/wiki/Running_glibc_programs

## install ruby
apk add \
		autoconf \
		bzip2 \
		bzip2-dev \
		ca-certificates \
		coreutils \
		dpkg-dev dpkg \
		g++ \
		gcc \
		gdbm-dev \
		glib-dev \
		gmp-dev \
		libc-dev \
		libffi-dev \
		libxml2-dev \
		libxslt-dev \
		linux-headers \
		make \
		ncurses-dev \
		openssl \
		openssl-dev \
		patch \
		procps \
		yaml-dev \
		zlib-dev \
		ruby \
		tar \
		xz \
		yaml-dev \
		zlib-dev \

### Add platform to bundle
bundle lock --add-platform x86_64-linux-musl

## Compiling rust applications
rustup target add x86_64-unknown-linux-musl
cargo build --target x86_64-unknown-linux-musl

## Set up printers
https://wiki.alpinelinux.org/wiki/Printer_Setup

## Set up services in runlevels to make boot faster
https://ptrcnull.me/posts/openrc-async-services/
