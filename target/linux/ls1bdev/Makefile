# 
# Copyright (C) 2007 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

BOARD:=ls1bdev
BOARDNAME:=ls1b dev board
FEATURES:=squashfs jffs2
LINUX_VERSION:=3.3
SUBTARGETS=mipsel

include $(INCLUDE_DIR)/target.mk
#DEFAULT_PACKAGES+=uboot-ifxmips

define Target/Description
	Build firmware images for godson2f firewall Controllers
endef

$(eval $(call BuildTarget))
