export ROOT=../
include $(ROOT)Makeconfig

# Download if u dont have
# https://drive.google.com/drive/folders/1VkvttHjAQdIalOR7jJS3ArhGpStnPbH1?usp=sharing
ORIGINAL_SYSTEM=$(ORIGINAL_DIR)/system.img
RESULT_IMAGE=$(OUT_DIR)/android.img

all: system/ remove custom /system/media/bootanimation.zip $(RESULT_IMAGE)
ifndef NOMINIMIZE
	$(info Resizing for fast flashing)
	e2fsck -f -p $(RESULT_IMAGE) || exit 0
	resize2fs -M $(RESULT_IMAGE)
	@sync
endif

$(RESULT_IMAGE): tmpfs/system.img
	$(info $(GREEN)copying to $(RESULT_IMAGE)$(NORM))
	@sync
	@cp tmpfs/system.img $(RESULT_IMAGE)
	@sync

custom:  $(wildcard custom/**/**)
	$(info $(GREEN)Custom $(@F).. $(NORM))
	sudo cp -ar custom/* system/
	touch tmpfs/system.img
	sync

remove: system/ remove.txt
	$(info $(GREEN)Removing $(@F).. $(NORM))
	@stat $@.txt > /dev/null
	$(foreach f,$(shell grep -v ^# remove.txt),@sudo rm -rf system/$f)

/system/media/bootanimation.zip: $(wildcard bootanimation/**/**)
	$(info $(GREEN)CREATING $(@F).. $(NORM))
	make -C bootanimation
	sudo mkdir -p /system/media/
	sudo cp bootanimation.zip /system/media/
	rm bootanimation.zip

system/: tmpfs/system.img
	$(shell test ! -d $@ && mkdir $@ && \
		sudo mount -o loop,sync tmpfs/system.img $@ )

tmpfs/system.img: $(ORIGINAL_SYSTEM)
	test -d tmpfs || mkdir tmpfs
	grep $(shell pwd)/tmpfs /proc/mounts || sudo mount -t tmpfs none tmpfs 
	$(info $(GREEN)Copying $(ORIGINAL_SYSTEM) to $@$(NORM))
	@cp $(ORIGINAL_SYSTEM) tmpfs/system.img

clean:
	sudo umount system/ || exit 0
	sudo umount tmpfs/ || exit 0
	sudo rmdir system tmpfs || exit 0
	rm bootanimation/bootanimation.zip || exit 0

.PHONY: remove all custom clean