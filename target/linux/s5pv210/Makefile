#
# Copyright (C) 2006-2009 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

ARCH:=arm
BOARD:=s5pv210
FEATURES:=squashfs jffs2
CFLAGS:=-O2 -pipe -march=armv7-a -mtune=cortex-a8 -funit-at-a-time -mfpu=vfpv3-d16 -mfloat-abi=softfp
BOARDNAME:=Samsung S5PV210
SUBTARGETS:=tq210

LINUX_VERSION:=3.0.8

define Target/Description
	Samsung s5pv210 arm
endef

include $(INCLUDE_DIR)/target.mk

$(eval $(call BuildTarget))
