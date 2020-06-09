
ifndef REPO
# You can change with `make REPO=YOUR_URL`
# I use apt-cacher-ng for fast rebuild in development
override REPO=http://localhost:3142/kambing.ui.ac.id/debian/
endif

TMP=$(shell pwd)/tmp
TMP_IMG=$(TMP)/debian.img
TMP_ROOTFS=$(TMP)/rootfs

all: image
	sync $(TMP_ROOTFS)
	@sudo umount $(TMP_ROOTFS) || exit 0
	sync $(TMP_IMG)
	cp $(TMP_IMG) ../result/

image: $(TMP) $(TMP_IMG) $(TMP_ROOTFS)

$(TMP_ROOTFS):
	@[ -d $@ ] || mkdir $@
	@if [ -z "$$(losetup -l | grep $<)" ]; then \
		echo Mounting $< ; \
		sudo mount -o loop,sync,noatime $< $@ ;\
	fi
	$(info Debootstrap $(@F))
	#sudo debootstrap --verbose --arch armel --foreign stretch $@ $(REPO)
	@sudo du -sh $@
	$(info running stage2.sh)
	sudo ./chroot.sh < stage2.sh

$(TMP_IMG):
	@if [ ! -f $@ ]; then \
		dd if=/dev/zero bs=1M count=753 of=$@ ;\
		mkfs.ext4 $@ ;\
	fi

$(TMP):
	@test -d $@ || mkdir $@
	@if [ -z "$$(grep $@ /proc/mounts)" ]; then \
		echo Mount tmpfs for fast build ;\
		sudo mount -t tmpfs none $@ ;\
	fi

clean_rootfs:
	sudo rm -rf $(TMP_ROOTFS)/*

clean:
	@test ! -d $(TMP_ROOTFS) || sudo umount $(TMP_ROOTFS)
	sudo umount $(TMP) || exit 0
	rmdir $(TMP) || exit 0

.PHONY: clean clean_rootfs all image