export DIR = $(shell pwd)
export TOOL_DIR = $(DIR)/tool
export OUT_DIR = $(DIR)/result
export BOOT_IMG = $(OUT_DIR)/boot.img
export DEBIAN_IMG = $(OUT_DIR)/debian.img

ifndef FLASH_TOOL
# you can change it using: make FLASH_TOOL=/path/to/sp_flash_tools
export FLASH_TOOL = /ext4/SP-Flash-Tool/flash_tool.sh
endif
export FLASH_TOOL_DIR = $(dir $(FLASH_TOOL))

all:
	@echo "NOTHING TODO"

tool:
	make -C $(TOOL_DIR)

$(OUT_DIR):
	@test -d $@ || mkdir $@

initram: tool $(OUT_DIR)
	make -C initram

flash_initram: initram
	make -C flash OUT=$(OUT_DIR)/flash_config_initram.xml
	$(info Connect USB Devices)
	$(FLASH_TOOL) -i $(OUT_DIR)/flash_config_initram.xml

$(OUT_DIR)/flash_config_initram.xml:
	make -C $(DIR)/flash OUT=$@ PART_BOOTIMG=$(BOOT_IMG)

backup/config.xml:
	@test -d $(@D) || mkdir $(@D)
	@sed -e s+DOWNLOAD_AGENT+$(FLASH_TOOL_DIR)MTK_AllInOne_DA.bin+ \
		-e s+SCATTER+$(DIR)/flash/scatter.txt+ \
		-e s+BACKUP_DIR+$(DIR)/backup+g \
		flash/backup-template.xml > $@

backup: backup/config.xml
	$(FLASH_TOOL) -i $(DIR)/backup/config.xml

clean_initram:
	make -C initram clean > /dev/null || exit 0

clean: clean_initram
	rm $(OUT_DIR)/flash_config_initram.xml backup/config.xml > /dev/null || exit 0
	
	rmdir $(OUT_DIR) > /dev/null || exit 0

.PHONY: clean all tool flash_initramfs clean_initram backup