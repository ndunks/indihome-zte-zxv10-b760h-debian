# Result Images

extract_initram: initramfs.cpio.gz
	$(shell test -d initramfs && rm -rf initramfs/* || mkdir initramfs)
	$(shell cd initramfs ;\
		dd if=../initramfs.cpio.gz bs=512 skip=1 | gzip -d | cpio -iv \
	)
