export DIR = $(shell pwd)
export TOOL_DIR = $(DIR)/tool
export OUT_DIR = $(DIR)/result
export BOOT_IMG = $(OUT_DIR)/boot.img

ifndef FLASH_TOOL_DIR
# you can change it using: make FLASH_TOOL_DIR=/path/to/sp_flash_tools
override FLASH_TOOL_DIR = /ext4/SP-Flash-Tool
endif

all:
	@echo "NOTHING TODO"

tool:
	make -C $(TOOL_DIR)

$(OUT_DIR):
	@test -d $@ || mkdir $@

initram: tool $(OUT_DIR)
	make -C initram

flash_initram: initram $(OUT_DIR)/flash_config_initram.xml
	$(info Connect USB Devices)
	@LD_LIBRARY_PATH="$(FLASH_TOOL_DIR):$(FLASH_TOOL_DIR)/lib" \
	$(FLASH_TOOL_DIR)/flash_tool -i $(OUT_DIR)/flash_config_initram.xml

$(OUT_DIR)/flash_config_initram.xml:
	make -C $(DIR)/flash OUT=$@ PART_BOOTIMG=$(BOOT_IMG)

clean:
	rm $(OUT_DIR)/flash_config_initram.xml
	make -C initram clean
	make -C $(TOOL_DIR) clean
	@test -d $@ || rmdir $@

.PHONY: clean all tool flash_initramfs