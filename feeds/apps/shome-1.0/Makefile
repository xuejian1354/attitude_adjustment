#
# Copyright (C) 2006-2011 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=shome
PKG_VERSION:=1.0
PKG_RELEASE=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_URL:=file://$(TOPDIR)/src
PKG_MD5SUM:=46d37655cd4619df0a24e8f096f196b3

PKG_CONFIG_DEPENDS := \
	CONFIG_PACKAGE_shome-app

include $(INCLUDE_DIR)/package.mk


define Package/shome/Default
  SECTION:=apps
  CATEGORY:=Apps
  SUBMENU:=Smart Home/Application
  URL:=$(TOPDIR)/src
  DEPENDS:=+libstdcpp +libpthread +librt
  MAINTAINER:=Sam Chen <xuejian1354@gmail.com>
endef

define Package/shome-app
  $(call Package/shome/Default)
  TITLE:=SHome, Projects for Smart Home Applications
  DEPENDS:= +libsqlite3 +libjsoncpp +pjsip-api \
			+boost-timer +boost-filesystem \
			+boost-iostreams +boost-math \
			+boost-program_options +boost-regex \
			+boost-serialization +boost-signals \
			+boost-locale +boost-random \
			+boost-thread +boost-wave \

endef

define Package/shome-app/description
SHome app is a program that manage smart home feature function.
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR);
endef

define Build/InstallDev
	echo "Hello World!"
endef

$(eval $(call BuildPackage,shome-app))
