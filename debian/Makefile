export ROOT=../
include $(ROOT)Makeconfig

# Create .env on this directory to set default value
-include .env

ifndef DEBIAN_REPO
# You can change with `make DEBIAN_REPO=YOUR_URL` or in `.env` file
# I use apt-cacher-ng for fast rebuild in development
override DEBIAN_REPO=http://kambing.ui.ac.id/debian/
endif

ifndef INCLUDE_PACKAGES
override INCLUDE_PACKAGES = sysvinit-core,net-tools,openbox,xorg
endif

ifndef EXCLUDE_PACKAGES
override EXCLUDE_PACKAGES =
endif

ifndef DEBIAN_VER
override DEBIAN_VER = buster
endif

ARGS = --variant=minbase --arch armel

ifneq ($(INCLUDE_PACKAGES),)
ARGS += --include $(INCLUDE_PACKAGES)
endif

ifneq ($(EXCLUDE_PACKAGES),)
ARGS += --exclude $(EXCLUDE_PACKAGES)
endif

ifeq ($(shell which debootstrap),)
$(error Please install debootstrap)
endif

# Jika install binfmt setelah qemu, maka kamu perlu: sudo dpkg-reconfigure qemu-user-static
ifeq ($(shell which update-binfmts),)
$(error Please install binfmt-support)
endif
ifeq ($(shell which qemu-arm-static),)
$(error Please install qemu-user-static)
endif


TMP=$(shell pwd)/tmp
TMP_IMG=$(TMP)/debian.img
TMP_ROOTFS=$(TMP)/rootfs/
FS_FEATURE_ENABLE=has_journal,ext_attr,resize_inode,filetype,extent,sparse_super,large_file,uninit_bg
FS_FEATURE_DISABLE=^dir_index,^64bit,^flex_bg,^huge_file,^dir_nlink,^extra_isize,^metadata_csum

$(DEBIAN_IMG): $(TMP) $(TMP_IMG) $(TMP_ROOTFS)
	cp $(TMP_IMG) $(DEBIAN_IMG)

print_packages: $(TMP)
	[ -d $(TMP)/debs ] || mkdir $(TMP)/debs
	$(write Please wait..)
	sudo debootstrap $(ARGS) --print-debs $(DEBIAN_VER) $(TMP)/debs $(DEBIAN_REPO) 2>/dev/null

$(TMP_ROOTFS):
	@[ -d $@ ] || mkdir $@
	@if [ -z "$$(losetup -l | grep $(TMP_IMG))" ]; then \
		echo Mounting $(TMP_IMG) ; \
		sudo mount -o loop,sync,noatime $(TMP_IMG) $@ ;\
	fi
	$(info Debootstrap $(@F))
	sudo debootstrap $(ARGS) --foreign $(DEBIAN_VER) $(TMP_ROOTFS) $(DEBIAN_REPO)
	sudo ./chroot.sh < stage2.sh
	@sudo du -sh $@

$(TMP_IMG):
	dd if=/dev/zero bs=1M count=753 of=$@
	mkfs.ext4 -O $(FS_FEATURE_ENABLE),$(FS_FEATURE_DISABLE) $@

$(TMP):
	@test -d $@ || mkdir $@
	@if [ -z "$$(grep $@ /proc/mounts)" ]; then \
		echo Mount tmpfs for fast build ;\
		sudo mount -t tmpfs none $@ ;\
	fi

clean_rootfs:
	@sudo umount $(TMP_ROOTFS) || exit 0
	@sudo rm -f $(TMP_IMG) || exit 0
	@sudo rm -rf $(TMP_ROOTFS) || exit 0
	@rm -f $(OUT_DIR)/debian.img || exit 0

clean:
	@test ! -d $(TMP_ROOTFS) || sudo umount $(TMP_ROOTFS) || exit 0
	sudo umount $(TMP) || exit 0
	rm -rf $(TMP) || exit 0

.PHONY: clean clean_rootfs all image print_packages