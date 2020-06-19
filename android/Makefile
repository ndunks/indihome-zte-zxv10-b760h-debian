export ROOT=../
include $(ROOT)Makeconfig

# Download if u dont have
# https://drive.google.com/drive/folders/1VkvttHjAQdIalOR7jJS3ArhGpStnPbH1?usp=sharing
ORIGINAL_SYSTEM=$(ORIGINAL_DIR)/system.img
SYSTEM_IMG=$(ANDROID_IMG)
SYSTEM_DIR=$(subst .img,,$(ANDROID_IMG))

REMOVE_LISTS=$(addprefix $(SYSTEM_DIR)/,$(shell sed -r '/^\#/d;/^\s*$$/d' remove.txt))

tmpfs/system.img: $(ORIGINAL_SYSTEM) remove.txt $(wildcard custom/**/**) bootanimation/bootanimation.zip
	@test -d tmpfs || mkdir tmpfs
	@grep $(SYSTEM_DIR) /proc/mounts && sudo umount $(SYSTEM_DIR) || exit 0
	@grep $(shell pwd)/tmpfs /proc/mounts || sudo mount -t tmpfs -o sync none tmpfs
	@echo $(GREEN)Copying fresh $@$(NORM)
	@test ! -e $(SYSTEM_IMG) || rm -f $(SYSTEM_IMG)
	@cp -f $(ORIGINAL_SYSTEM) $(SYSTEM_IMG)
	@[ -d $(SYSTEM_DIR) ] || mkdir $(SYSTEM_DIR)

	sudo mount -t ext4 -o loop,sync,rw $(SYSTEM_IMG) $(SYSTEM_DIR)
	@echo $(GREEN)Removing..
	$(foreach f,$(REMOVE_LISTS),@sudo rm -rf $f)
	@echo $(NORM)

	@echo $(GREEN)Copying custom/**.. $(NORM)
	sudo cp -ar custom/* $(SYSTEM_DIR)/

	@echo $(GREEN)Copying bootanimation$(NORM)
	sudo cp -f bootanimation/bootanimation.zip $(SYSTEM_DIR)/media/

	@echo $(GREEN)running scripts.sh$(NORM)
	sudo bash -c "cd $(SYSTEM_DIR) && . ../../scripts.sh"



	@sync tmpfs/
	sudo umount $(SYSTEM_DIR)
	@sync $(SYSTEM_IMG)

ifndef NOMINIMIZE
	@echo $(GREEN)Resizing for fast flashing $(NORM)
	@e2fsck -f -p $(SYSTEM_IMG) || exit 0
	@resize2fs -M $(SYSTEM_IMG)
	@e2fsck -f -p $(SYSTEM_IMG) || exit 0
	@sync tmpfs/
endif

bootanimation/bootanimation.zip: $(wildcard bootanimation/**/**)
	$(info $(GREEN)CREATING $(@F).. $(NORM))
	make -C bootanimation
test:
	@echo $(GREEN)
	@for line in $$(sed -r '/^#/d; /^\s*$$/d' remove.txt); do \
		sudo rm -rf $(SYSTEM_DIR)/$$line ; \
		echo remove $(SYSTEM_DIR)/$$line; \
	done
	@echo $(NORM)
clean:
	sudo umount $(SYSTEM_DIR) || exit 0
	sudo umount tmpfs || exit 0
	sudo rm -rf tmpfs || exit 0
	rm bootanimation/bootanimation.zip || exit 0

.PHONY: remove all custom clean