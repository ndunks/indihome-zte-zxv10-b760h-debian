
# Create .env on this directory to set default value
-include .env
ifndef DEBIAN_REPO
# You can change with `make DEBIAN_REPO=YOUR_URL` or in `.env` file
# I use apt-cacher-ng for fast rebuild in development
override DEBIAN_REPO=http://kambing.ui.ac.id/debian/
endif

TMP=$(shell pwd)/tmp
TMP_IMG=$(TMP)/debian.img
TMP_ROOTFS=$(TMP)/rootfs
FS_FEATURE_ENABLE=has_journal,ext_attr,resize_inode,filetype,extent,sparse_super,large_file,uninit_bg
FS_FEATURE_DISABLE=^dir_index,^64bit,^flex_bg,^huge_file,^dir_nlink,^extra_isize,^metadata_csum

all: image
	sync $(TMP_ROOTFS)
	@sudo umount $(TMP_ROOTFS) || exit 0
	sync $(TMP_IMG)
	cp $(TMP_IMG) ../result/

image: $(TMP) $(TMP_IMG) $(TMP_ROOTFS)

$(TMP_ROOTFS):
	@[ -d $@ ] || mkdir $@
	@if [ -z "$$(losetup -l | grep $(TMP_IMG))" ]; then \
		echo Mounting $(TMP_IMG) ; \
		sudo mount -o loop,sync,noatime $(TMP_IMG) $@ ;\
	fi
	$(info Debootstrap $(@F))
	sudo debootstrap --variant=minbase --verbose --arch armel --foreign stretch $@ $(DEBIAN_REPO)
	@sudo du -sh $@
	$(info running stage2.sh)
	sudo ./chroot.sh < stage2.sh

$(TMP_IMG):
	@if [ ! -f $@ ]; then \
		dd if=/dev/zero bs=1M count=753 of=$@ ;\
		mkfs.ext4 -O $(FS_FEATURE_ENABLE),$(FS_FEATURE_DISABLE) $@ ;\
	fi

$(TMP):
	@test -d $@ || mkdir $@
	@if [ -z "$$(grep $@ /proc/mounts)" ]; then \
		echo Mount tmpfs for fast build ;\
		sudo mount -t tmpfs none $@ ;\
	fi

clean_rootfs:
	sudo rm -rf $(TMP_ROOTFS)
	@rm -f ../result/debian.img

clean:
	@test ! -d $(TMP_ROOTFS) || sudo umount $(TMP_ROOTFS) || exit 0
	sudo umount $(TMP) || exit 0
	rmdir $(TMP) || exit 0

.PHONY: clean clean_rootfs all image