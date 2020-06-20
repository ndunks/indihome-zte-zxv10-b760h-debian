export ROOT=../
include $(ROOT)Makeconfig

ifndef DEBIAN_REPO
# You can change with `make DEBIAN_REPO=YOUR_URL` or in `.env` file
override DEBIAN_REPO=http://kambing.ui.ac.id/debian/
endif

DEBOOTSTRAP = $(shell which debootstrap)
ifeq ($(DEBOOTSTRAP),)
$(error Please install debootstrap)
endif

# Jika install binfmt setelah qemu, maka kamu perlu: sudo dpkg-reconfigure qemu-user-static
ifeq ($(shell which update-binfmts),)
$(error Please install binfmt-support)
endif
ifeq ($(shell which qemu-arm-static),)
$(error Please install qemu-user-static)
endif

export DEBOOTSTRAP_DIR=/usr/share/debootstrap
export ARCH = armel
export SUITE = buster
export INCLUDE = base-files base-passwd dpkg adduser apt libc-bin libgcc1 \
libc6 gcc-8-base libstdc++6 libbz2-1.0 libselinux1 libpcre3 libdebconfclient0 \
liblzma5 zlib1g libacl1 libattr1 libapt-pkg5.0 liblz4-1 libsystemd0 \
libgcrypt20 libgpg-error0 libudev1 libzstd1 libseccomp2 libgnutls30 \
libgmp10 libhogweed4 libidn11 libnettle6 libp11-kit0 libtasn1-6 libidn2-0 \
libunistring2 libffi6 perl-modules-5.28 perl-base gpgv tar coreutils \
debian-archive-keyring debianutils passwd debconf libaudit1 libsemanage1 \
dropbear-bin nano

ARGS = --variant=minbase --arch=$(ARCH) \
--no-check-gpg --no-check-certificate --download-only \
--include=$(subst $(SPACE),$(COMMA),$(INCLUDE))

FS_FEATURE_ENABLE=has_journal,ext_attr,resize_inode,filetype,extent,sparse_super,large_file,uninit_bg
FS_FEATURE_DISABLE=^dir_index,^64bit,^flex_bg,^huge_file,^dir_nlink,^extra_isize,^metadata_csum

export TMP=$(PWD)/tmpfs
export IMG=$(TMP)/debian.img
export TARGET=$(TMP)/debian
export DEBIAN_IMG := $(IMG)
export DEBIAN_REPO

all: stage1 stage2
# Display the size of system rootfs dir
	@sudo du -sh $(TARGET)
	$(info Done, image in $(IMG))
#	cp $(IMG) $(IMG)

stage1: $(TARGET)/etc/debian_version
stage2: $(TARGET)/busybox-installed


$(TARGET)/busybox-installed: $(TARGET)/etc/debian_version
	sudo -E ./chroot.sh < stage2.sh

$(TARGET)/etc/debian_version: $(TARGET)/debootstrap/debpaths
	test -e $@ || sudo -E ./stage1.sh

$(TARGET)/debootstrap/debpaths: $(TARGET)
	test -e $@ || sudo -e sudo -E $(DEBOOTSTRAP) $(ARGS) $(SUITE) $(TARGET) $(DEBIAN_REPO)

$(TARGET): $(IMG)
	mkdir -p $@
	@if [ -z "$$(losetup -l | grep $(IMG))" ]; then \
		echo Mounting $(IMG) ; \
		sudo mount -o loop,sync,noatime $(IMG) $@ ;\
	fi

$(IMG): $(TMP)
	$(info Creating $(@F))
	dd if=/dev/zero bs=1M count=753 of=$@
	mkfs.ext4 -O $(FS_FEATURE_ENABLE),$(FS_FEATURE_DISABLE) $@

$(TMP):
	$(info Creating $(@F))
	mkdir -p $@
	@if [ -z "$$(grep $@ /proc/mounts)" ]; then \
		echo Mount tmpfs for fast build ;\
		sudo mount -t tmpfs none $@ ;\
	fi

clean:
	@sudo umount $(TARGET)/dev/pts 2>/dev/null || exit 0
	@sudo umount $(TARGET)/dev 2>/dev/null || exit 0
	@sudo umount $(TARGET)/proc 2>/dev/null || exit 0
	@sudo umount $(TARGET)/sys 2>/dev/null || exit 0
	@sudo rm -rf $(TARGET)/*

clean_all: clean
	@sudo umount $(TARGET) 2>/dev/null || exit 0
	@sudo umount $(TMP) 2>/dev/null || exit 0
	@sudo rm -rf $(TMP) || exit 0

.PHONY: clean clean_all all stage1 stage2