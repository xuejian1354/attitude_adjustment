#
# Copyright (C) 2006-2009 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

ARCH:=arm
BOARD:=s5pv210
BOARDNAME:=samsung s5pv210
FEATURES:=squashfs jffs2
CFLAGS:=-Os -pipe -march=armv7-a -mtune=cortex-a8 -mcpu=cortex-a8 -mfpu=neon -mfloat-abi=softfp
SUBTARGETS:=tq210

LINUX_VERSION:=3.0.8

define Target/Description
	Select cpu arch for samsung s5pv210
endef

include $(INCLUDE_DIR)/target.mk

$(eval $(call BuildTarget))
