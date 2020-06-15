export ROOT=../
include $(ROOT)Makeconfig
RECOVERY_IMG_TMP=$(subst .img,.tmp,$(RECOVERY_IMG))
INITRAMFS=$(OUT_DIR)/initramfs-recovery.cpio.gz
INITRAMFS_FINAL=$(subst .gz,.bin,$(INITRAMFS))

$(RECOVERY_IMG): $(RECOVERY_IMG_TMP)
	$(info $(GREEN)CREATING $(@F).. $(NORM))
	@cp recovery-header.bin $@
	@cat $< >> $@

$(RECOVERY_IMG_TMP): $(INITRAMFS_FINAL) zImage
	$(info $(GREEN)CREATING $(@F).. $(NORM))
	@$(TOOL_DIR)/mkbootimg --kernel zImage \
		--ramdisk $< \
		--board $(BOARD_ID) -o $@

$(INITRAMFS_FINAL): $(INITRAMFS)
	@$(TOOL_DIR)/mkimage $< RECOVERY > $@

$(INITRAMFS): $(shell find rootfs -type f)
	$(info $(GREEN)CREATING $(@F).. $(NORM))
	$(shell cd rootfs && find | cpio  --owner 0:0 --quiet -H newc -o | gzip > $@)
	@sync

zImage:
	$(TOOL_DIR)/unmkbootimg $(ORIGINAL_DIR)/recovery.img
	mkdir original || exit 0
	$(shell cd original ;\
		dd if=../initramfs.cpio.gz bs=512 skip=1 | gzip -d | cpio -i )
	dd if=$(ORIGINAL_DIR)/recovery.img bs=1 count=96 of=recovery-header.bin
