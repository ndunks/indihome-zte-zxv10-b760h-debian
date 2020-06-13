
INITRAMFS=$(OUT_DIR)/initramfs.cpio.gz
ANDROIDRAMFS=android.cpio

# these value from extract result with unmkbootimg
BOARD_ID = 20181123.235335

all: $(BOOT_IMG)

$(BOOT_IMG): $(INITRAMFS)
	$(info CREATING $(@F)..)

# Idon't know how to make mediatek img header, so I simply copy 96 first byte from original boot.img
	@cp boot-header.bin $@
	@mkbootimg --kernel zImage --ramdisk $(INITRAMFS) --board $(BOARD_ID) -o $@.tmp
# Combine header with img
	@cat $@.tmp >> $@
	@rm $@.tmp $(INITRAMFS).tmp

$(INITRAMFS): rootfs/init $(ANDROIDRAMFS)
	$(info CREATING $(@F)..)
ifdef NO_ANDROIDINITRAMFS
	$(shell test -e rootfs/$(ANDROIDRAMFS) && rm -f rootfs/$(ANDROIDRAMFS))
else
	cp $(ANDROIDRAMFS) rootfs/
endif
	$(shell cd rootfs && find . | cpio  --owner 0:0 --quiet -H newc -o | gzip > $@.tmp)
	$(shell mkimage $@.tmp ROOTFS > $@)

$(ANDROIDRAMFS): android/*.rc
ifndef NO_ANDROIDINITRAMFS
	$(info CREATING $(@F)..)
	$(shell cd android && find . | cpio  --owner 0:0 -H newc -o -F ../$@)
else
	$(info NO $(@F)..)
endif

clean:
	rm $(ANDROIDRAMFS) $(INITRAMFS) $(BOOT_IMG)

.PHONY: clean
