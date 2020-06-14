include ../Makeconfig
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
	$(info copying to $(RESULT_IMAGE))
	@sync
	@cp tmpfs/system.img $(RESULT_IMAGE)
	@sync

custom: custom/
	sudo cp -ar custom/* system/
	touch tmpfs/system.img
	sync

remove: system/ remove.txt
	@stat $@.txt > /dev/null
	$(foreach f,$(shell grep -v ^# remove.txt),@sudo rm -rf system/$f)

/system/media/bootanimation.zip: bootanimation/desc.txt
	make -C bootanimation
	sudo mkdir -p /system/media/
	sudo cp bootanimation.zip /system/media/
	rm bootanimation.zip

system/: tmpfs/ tmpfs/system.img
	$(shell test ! -d $@ && mkdir $@ && \
		sudo mount -o loop,sync tmpfs/system.img $@ )

tmpfs/system.img: $(ORIGINAL_SYSTEM)
	$(info Copying $(ORIGINAL_SYSTEM) to $@)
	@cp $(ORIGINAL_SYSTEM) tmpfs/system.img

tmpfs/:
	mkdir $@
	sudo mount -t tmpfs none $@

clean:
	sudo umount system/ || exit 0
	sudo umount tmpfs/ || exit 0
	sudo rmdir system tmpfs || exit 0
	rm bootanimation/bootanimation.zip || exit 0

.PHONY: remove all custom clean