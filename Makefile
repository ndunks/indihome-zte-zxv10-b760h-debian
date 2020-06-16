export ROOT=$(CURDIR)/
include $(ROOT)Makeconfig

#Local config
-include .env


ifndef FLASH_TOOL
# you can change it using: make FLASH_TOOL=/path/to/sp_flash_tools or in .env file
FLASH_TOOL = /ext4/SP-Flash-Tool/flash_tool.sh
endif

export FLASH_TOOL

ifndef REBOOT_DELAY
REBOOT_DELAY = 1
endif
export FLASH_TOOL_DIR = $(dir $(FLASH_TOOL))
FLASH_CONFIG_INITRAM=$(OUT_DIR)/flash_config_initram.xml
FLASH_CONFIG_DEBIAN=$(OUT_DIR)/flash_config_debian.xml
FLASH_CONFIG_ANDROID=$(OUT_DIR)/flash_config_android.xml
FLASH_CONFIG_RECOVERY=$(OUT_DIR)/flash_config_recover.xml

REBOOT_STB := (echo \\06 > /dev/ttyUSB0 && sleep $(REBOOT_DELAY) && echo reboot > /dev/ttyUSB0 || exit 0) & 

all:
	@echo "\e[33mNOTHING TODO YET\e[0m"

tool:
	@make -C $(TOOL_DIR)

$(OUT_DIR):
	@test -d $@ || mkdir $@

initram:
	make -C initram

debian:
	make -C debian

recovery:
	make -C recovery

android:
	make -C android

flash_initram: initram $(FLASH_CONFIG_INITRAM)
	$(info Connect USB Devices)
	$(REBOOT_STB)
	@while ! $(FLASH_TOOL) -b -i $(FLASH_CONFIG_INITRAM); do \
		echo $(GREEN)try again..$(NORM) ;\
		$(REBOOT_STB) \
	done

ifndef NO_BUILD
flash_debian: debian $(FLASH_CONFIG_DEBIAN)
else
flash_debian: $(DEBIAN_IMG) $(FLASH_CONFIG_DEBIAN)
endif
	$(info Connect USB Devices)
	$(REBOOT_STB)
	$(FLASH_TOOL) -b -i $(FLASH_CONFIG_DEBIAN)

flash_android: android $(FLASH_CONFIG_ANDROID)
	$(info Connect USB Devices)
	$(REBOOT_STB)
	$(FLASH_TOOL) -b -i $(FLASH_CONFIG_ANDROID)

flash_recovery: recovery $(FLASH_CONFIG_RECOVERY)
	$(info Connect USB Devices)
	$(REBOOT_STB)
	$(FLASH_TOOL) -b -i $(FLASH_CONFIG_RECOVERY)

flash_original_boot:
	make -C flash OUT=../result/flash_original_boot.xml PART_BOOTIMG=original/boot.img
	$(REBOOT_STB)
	$(FLASH_TOOL) -b -i result/flash_original_boot.xml

$(FLASH_CONFIG_INITRAM):
	make -C flash OUT=$@ PART_BOOTIMG=$(BOOT_IMG)

$(FLASH_CONFIG_DEBIAN):
	make -C flash OUT=$@ PART_USRDATA=$(DEBIAN_IMG)

$(FLASH_CONFIG_ANDROID):
	make -C flash OUT=$@ PART_ANDROID=$(ANDROID_IMG)

$(FLASH_CONFIG_RECOVERY):
	make -C flash OUT=$@ PART_RECOVERY=$(RECOVERY_IMG)

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

update_initram: clean_initram flash_initram

clean: clean_initram clean_debian
	rm $(FLASH_CONFIG_INITRAM) backup/config.xml > /dev/null || exit 0

.PHONY: clean all tool flash_initramfs flash_debian clean_initram backup \
debian initram reboot_stb android_under_debian android flash_android \
flash_original_boot recovery flash_recovery