export ROOT=../
include $(ROOT)Makeconfig


INITRAMFS=$(OUT_DIR)/initramfs.cpio.gz
INITRAMFS_FINAL=$(subst .gz,.bin,$(INITRAMFS))

# Combine header with img
$(BOOT_IMG): $(BOOT_IMG).tmp
	$(info $(GREEN)CREATING $(@F).. $(NORM))
	@cp boot-header.bin $@
	@cat $< >> $@

$(BOOT_IMG).tmp: $(INITRAMFS_FINAL)
	$(info $(GREEN)CREATING $(@F).. $(NORM))
	@$(TOOL_DIR)/mkbootimg --kernel zImage \
		--ramdisk $< \
		--board $(BOARD_ID) -o $@

$(INITRAMFS_FINAL): $(INITRAMFS)
	@$(TOOL_DIR)/mkimage $< ROOTFS > $@

$(INITRAMFS): $(shell find rootfs -type f)
	$(info $(GREEN)CREATING $(@F).. $(NORM))
	$(shell chmod -R 700 rootfs/*)
	$(shell cd rootfs && find | cpio  --owner 0:0 --quiet -H newc -o | gzip > $@)
	@sync

clean:
	rm $(INITRAMFS) $(INITRAMFS_FINAL) $(BOOT_IMG).tmp 2> /dev/null || exit 0

.PHONY: clean
