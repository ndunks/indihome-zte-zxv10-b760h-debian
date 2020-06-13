
extract:
	../tool/unmkbootimg ../original/recovery.img
	mkdir rootfs || exit 0
	$(shell cd rootfs ;\
		dd if=../initramfs.cpio.gz bs=512 skip=1 | gzip -d | cpio -i )
	dd if=../original/recovery.img bs=1 count=96 of=recovery-header.bin

.PHONY: extract
