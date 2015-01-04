ARCH:=mipsel
SUBTARGET:=mipsel
BOARDNAME:=mipsel
FEATURES:=squashfs jffs2
CFLAGS:=-Os -pipe -funit-at-a-time

define Target/Description
	Build firmware images for ls1b dev board
	running in 32bit kernel
endef

