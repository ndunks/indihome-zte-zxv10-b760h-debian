export ROOT=../
include $(ROOT)Makeconfig

# Download if u dont have
# https://drive.google.com/drive/folders/1VkvttHjAQdIalOR7jJS3ArhGpStnPbH1?usp=sharing
ORIGINAL_SYSTEM=$(ORIGINAL_DIR)/system.img
SYSTEM_IMG=$(ANDROID_IMG)
SYSTEM_DIR=$(subst .img,,$(ANDROID_IMG))

tmpfs/system.img: $(ORIGINAL_SYSTEM) remove.txt $(wildcard custom/**/**) bootanimation/bootanimation.zip
	@test -d tmpfs || mkdir tmpfs
	@grep $(shell pwd)/system /proc/mounts && sudo umount system/ || exit 0
	@grep $(shell pwd)/tmpfs /proc/mounts || sudo mount -t tmpfs none tmpfs
	$(info $(GREEN)Copying fresh $@$(NORM))
	@cp $(ORIGINAL_SYSTEM) $(SYSTEM_IMG)
	@[ -d $(SYSTEM_DIR) ] || mkdir $(SYSTEM_DIR)

	@sudo mount -o loop,sync $(SYSTEM_IMG) $(SYSTEM_DIR)
	$(info $(GREEN)Custom $(@F).. $(NORM))
	@sudo cp -ar custom/* $(SYSTEM_DIR)/

	$(info $(GREEN)Removing $(@F).. $(NORM))
	$(foreach f,$(shell grep -v ^# remove.txt),@sudo rm -rf $(SYSTEM_DIR)/$f)

	@sudo cp bootanimation/bootanimation.zip $(SYSTEM_DIR)/media/
	@sync

ifndef NOMINIMIZE
	$(info Resizing for fast flashing)
	e2fsck -f -p $(SYSTEM_IMG) || exit 0
	resize2fs -M $(SYSTEM_IMG)
endif

bootanimation/bootanimation.zip: $(wildcard bootanimation/**/**)
	$(info $(GREEN)CREATING $(@F).. $(NORM))
	make -C bootanimation

clean:
	sudo umount $(SYSTEM_DIR) || exit 0
	sudo umount tmpfs || exit 0
	sudo rmdir tmpfs || exit 0
	rm bootanimation/bootanimation.zip || exit 0

.PHONY: remove all custom clean