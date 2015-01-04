# 
# Copyright (C) 2006 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/image.mk

#define Image/BuildKernel
#	$(STAGING_DIR_HOST)/bin/lzma e $(KDIR)/vmlinux $(KDIR)/vmlinux.lzma
#	mkimage -A mips -O linux -T kernel -a 0x80002000 -C lzma -e \
#		0x80002000 \
#		-n 'MIPS OpenWrt Linux-$(LINUX_VERSION)' \
#		-d $(KDIR)/vmlinux.lzma $(KDIR)/uImage
#
#	cp $(KDIR)/uImage $(BIN_DIR)/openwrt-$(BOARD)-uImage
#endef

define Image/BuildKernel
	cp $(KDIR)/linux-$(LINUX_VERSION)/vmlinuz $(BIN_DIR)/openwrt-$(BOARD)-vmlinuz
endef

define Image/Build/squashfs
	cat $(KDIR)/uImage $(KDIR)/root.$(1) > $(BIN_DIR)/openwrt-$(BOARD)-$(1).image
	$(call prepare_generic_squashfs,$(BIN_DIR)/openwrt-$(BOARD)-$(1).image)
endef

define Image/Build/jffs2-64k
	dd if=$(KDIR)/uImage of=$(KDIR)/uImage.$(1) bs=64k conv=sync
	cat $(KDIR)/uImage.$(1) $(KDIR)/root.$(1) > $(BIN_DIR)/openwrt-$(BOARD)-$(1).image
endef

BOOTOPTS=$(strip $(subst ",, $(CONFIG_LS_GRUB_BOOTOPTS)))
ROOTPART=$(strip $(subst ",, $(CONFIG_LS_GRUB_ROOTPART)))
#"))")) # fix vim's broken syntax highlighting

  define Image/cmdline/squashfs
    block2mtd.block2mtd=$(ROOTPART),65536,rootfs root=/dev/mtdblock0 rootfstype=squashfs init=/etc/preinit
  endef

  define Image/cmdline/jffs2-64k
    block2mtd.block2mtd=$(ROOTPART),65536,rootfs root=/dev/mtdblock0 rootfstype=jffs2 init=/etc/preinit
  endef

  define Image/cmdline/jffs2-128k
    block2mtd.block2mtd=$(ROOTPART),131072,rootfs root=/dev/mtdblock0 rootfstype=jffs2 init=/etc/preinit
  endef

  define Image/cmdline/ext2
    root=$(ROOTPART) rootfstype=ext2 init=/etc/preinit
  endef
  
  define Image/Build/grub
	# left here because the image builder doesnt need these
	$(INSTALL_DIR) $(KDIR)/root.grub/boot/
	$(CP) $(KDIR)/vmlinux.elf $(KDIR)/root.grub/boot/vmlinux
	sed \
		-e 's#@CMDLINE@#$(strip $(call Image/cmdline/$(1))) $(BOOTOPTS)#g' \
		-e 's#@BAUDRATE@#$(CONFIG_LS_GRUB_BAUDRATE)#g' \
		./boot.cfg > $(KDIR)/root.grub/boot/boot.cfg
	PADDING="$(CONFIG_LS_GRUB_IMAGES_PAD)" PATH="$(TARGET_PATH)" ./gen_image.sh $(BIN_DIR)/openwrt-$(BOARD)-$(1).image $(CONFIG_LS_GRUB_KERNELPART) $(KDIR)/root.grub $(CONFIG_TARGET_ROOTFS_FSPART) $(KDIR)/root.$(1)
	$(call Image/Build/grub/$(1))
  endef

define Image/Build
	$(call Image/Build/$(1),$(1))
	ln -sf $(KDIR)/root.$(1) $(BIN_DIR)/
	cp $(KDIR)/vmlinux.elf $(BIN_DIR)/openwrt-$(BOARD)-vmlinux
	$(call Image/Build/grub,$(1))
endef

$(eval $(call BuildImage))
