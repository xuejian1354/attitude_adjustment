# 
# Copyright (C) 2007 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

ARCH:=mipsel
BOARD:=loongson
BOARDNAME:=Loongson SoC
#FEATURES:=squashfs jffs2
LINUX_VERSION:=3.3
SUBTARGETS=ls1b
CFLAGS:=-Os -pipe -mips32r2 -mtune=mips32r2 -funit-at-a-time

include $(INCLUDE_DIR)/target.mk
#DEFAULT_PACKAGES+=uboot-ifxmips

define Target/Description
	Build firmware images for godson2f firewall Controllers
endef

$(eval $(call BuildTarget))
