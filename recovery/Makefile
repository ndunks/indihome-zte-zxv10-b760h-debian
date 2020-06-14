include ../Makeconfig
extract:
	$(TOOL_DIR)/unmkbootimg $(ORIGINAL_DIR)/recovery.img
	mkdir rootfs || exit 0
	$(shell cd rootfs ;\
		dd if=../initramfs.cpio.gz bs=512 skip=1 | gzip -d | cpio -i )
	dd if=$(ORIGINAL_DIR)/recovery.img bs=1 count=96 of=recovery-header.bin

.PHONY: extract
