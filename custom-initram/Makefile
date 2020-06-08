
BOOT_IMG = boot.img
INITRAMFS= initramfs_custom.cpio.gz

ifndef FLASH_TOOL_DIR
	override FLASH_TOOL_DIR := "/ext4/SP-Flash-Tool"
endif


$(BOOT_IMG): $(INITRAMFS)
	@echo "Creating $(BOOT_IMG).."
	@test -f $(BOOT_IMG) && unlink $(BOOT_IMG)
	cp boot-header.bin $(BOOT_IMG)
	@mkbootimg --kernel zImage --ramdisk $(INITRAMFS) --board '20181123.235335' -o $(BOOT_IMG).tmp
	cat $(BOOT_IMG).tmp >> $(BOOT_IMG)
	rm $(BOOT_IMG).tmp

$(INITRAMFS):
	@echo "Creating $(INITRAMFS).."
	$(shell cd rootfs && find . | cpio --quiet -H newc -o | gzip > ../$(INITRAMFS).tmp)
	$(shell ./tools/mkimage $(INITRAMFS).tmp ROOTFS > $(INITRAMFS))
	@rm $(INITRAMFS).tmp

.PHONY: clean flash $(INITRAMFS)

clean:
	rm $(INITRAMFS) $(BOOT_IMG)

flash:
	@echo "Connect USB Devices"
	@LD_LIBRARY_PATH="$(FLASH_TOOL_DIR):$(FLASH_TOOL_DIR)/lib" \
	$(FLASH_TOOL_DIR)/flash_tool -c download -s flash_boot_scatter.txt
