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
FLASH_CONFIG_INITRAM=$(OUT_DIR)/flash_config_initram.xml
FLASH_CONFIG_DEBIAN=$(OUT_DIR)/flash_config_debian.xml

all:
	@echo "NOTHING TODO"

tool:
	make -C $(TOOL_DIR)

$(OUT_DIR):
	@test -d $@ || mkdir $@

initram: $(BOOT_IMG)

debian: $(DEBIAN_IMG)

$(BOOT_IMG): $(OUT_DIR) tool
	make -C initram

$(DEBIAN_IMG): $(OUT_DIR)
	make -C debian

flash_initram: $(BOOT_IMG) $(FLASH_CONFIG_INITRAM)
	$(info Connect USB Devices)
	$(FLASH_TOOL) -b -i $(FLASH_CONFIG_INITRAM)

flash_debian: $(DEBIAN_IMG) $(FLASH_CONFIG_DEBIAN)
	$(info Connect USB Devices)
	$(FLASH_TOOL) -b -i $(FLASH_CONFIG_DEBIAN)

$(FLASH_CONFIG_INITRAM):
	make -C $(DIR)/flash OUT=$@ PART_BOOTIMG=$(BOOT_IMG)

$(FLASH_CONFIG_DEBIAN):
	make -C $(DIR)/flash OUT=$@ PART_USRDATA=$(DEBIAN_IMG)

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
	rm -f $(BOOT_IMG) || exit 0

clean_debian:
	make -C debian clean > /dev/null || exit 0
	rm -f $(DEBIAN_IMG) || exit 0

clean: clean_initram clean_debian
	rm $(FLASH_CONFIG_INITRAM) backup/config.xml > /dev/null || exit 0
	
	rmdir $(OUT_DIR) > /dev/null || exit 0

.PHONY: clean all tool flash_initramfs flash_debian clean_initram backup debian initram