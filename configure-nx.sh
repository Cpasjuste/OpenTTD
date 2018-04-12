#!/bin/bash

CFLAGS="-g -O2 -march=armv8-a -mtune=cortex-a57 -mtp=soft -fPIC -ftls-model=local-exec" \
CXXFLAGS="${CFLAGS}" \
CPPFLAGS="-D__SWITCH__ -I /opt/devkitpro/portlibs/switch/include -isystem /opt/devkitpro/libnx/include" \
LDFLAGS="-L/opt/devkitpro/portlibs/switch/lib -L/opt/devkitpro/libnx/lib" \
PKG_CONFIG_PATH="/opt/devkitpro/portlibs/switch/lib/pkgconfig"
./configure --prefix=/opt/devkitpro/portlibs/switch --host=aarch64-none-elf \
	--disable-network \
	--without-threads \
	--without-lzma \
	--without-liblzo2 \
	--prefix-dir="." \
	--with-sdl="/opt/devkitpro/portlibs/switch/bin/aarch64-none-elf-pkg-config sdl" \
	--with-png="/opt/devkitpro/portlibs/switch/bin/aarch64-none-elf-pkg-config libpng" \
	--with-freetype="/opt/devkitpro/portlibs/switch/bin/aarch64-none-elf-pkg-config freetype2"
	#--enable-static

