#### This is the buildsystem for the OpenWrt Linux distribution.
#### 
#### You can get base config from ./defconfig dirs.
#### Use `"cp ./defconfig/[arch]_config .config"`
#### There is some configs:
#### *ls1bdev_official_config*		---base config support from loongson offcial, but not use anyway.
#### *ls1bdev_base_config*		---base config support from loongson for apps.
#### *ls1bdev_tiny_config*		---support compile a tiny rootfs for loongson ls1b, boot from initrd.
#### *mt7620_config*		---support mtk mt7620, but not test. compile have some bug not fix.
#### *tq210_tiny_config*		---support for samsung s5pv210, use tq210 board, kernel & drivers.
#### 							have problem in toolchain.
#### 
#### Please use `"make menuconfig"` to configure your appreciated
#### configuration for the toolchain and firmware.
#### 
#### You need to have installed gcc, binutils, patch, bzip2, flex,
#### make, gettext, pkg-config, unzip, libz-dev and libc headers.
#### 
#### Run `"./scripts/feeds update"` to get the latest package definitions
#### defined in feeds.conf / feeds.conf.default respectively
#### and `"./scripts/feeds install"` to install symlinks into "package/feeds/*".
#### 
#### Use "make menuconfig" to configure your image.
#### 
#### Simply running `"make"` will build your firmware.
#### It will download all sources, build the cross-compile toolchain, 
#### the kernel and all choosen applications.
#### 
#### You can use `"scripts/flashing/flash.sh"` for remotely updating your embedded
#### system via tftp.
#### 
#### The OpenWrt system is documented in docs/. You will need a LaTeX distribution
#### and the tex4ht package to build the documentation. Type `"make -C docs/"` to build it.
#### 
#### To build your own firmware you need to have access to a Linux, BSD or MacOSX system
#### (case-sensitive filesystem required). Cygwin will not be supported because of
#### the lack of case sensitiveness in the file system.
#### 
#### 
#### Sunshine!
#### 	Your OpenWrt Project
#### 	http://openwrt.org


