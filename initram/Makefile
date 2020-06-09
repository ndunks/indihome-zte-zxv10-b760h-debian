
INITRAMFS= $(OUT_DIR)/initramfs.cpio.gz

# these value from extract result with unmkbootimg
BOARD_ID = 20181123.235335

all: $(BOOT_IMG)

$(BOOT_IMG): $(INITRAMFS)
	$(info CREATING $(@F)..)

	# Idon't know how to make mediatek img header, so I simply copy 96 first byte from original boot.img
	cp boot-header.bin $@
	mkbootimg --kernel zImage --ramdisk $(INITRAMFS) --board $(BOARD_ID) -o $@.tmp

	# Combine header with img
	cat $@.tmp >> $@

	# Clean temp file
	rm $@.tmp $(INITRAMFS).tmp

$(INITRAMFS):
	$(info CREATING $(@F)..)
	$(shell cd rootfs && find . | cpio --quiet -H newc -o | gzip > $@.tmp)
	$(shell $(TOOL_DIR)/mkimage $@.tmp ROOTFS > $@)

clean:
	rm $(INITRAMFS) $(BOOT_IMG)

.PHONY: clean
