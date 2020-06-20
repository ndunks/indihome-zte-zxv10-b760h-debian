export ROOT=$(CURDIR)/
include $(ROOT)Makeconfig

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

flash_debian: debian $(FLASH_CONFIG_DEBIAN)
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
	make -C flash OUT=$@ PART_USRDATA=$(DIR)/debian/tmpfs/debian.img

$(FLASH_CONFIG_ANDROID):
	make -C flash OUT=$@ PART_ANDROID=$(ANDROID_IMG)

$(FLASH_CONFIG_RECOVERY):
	make -C flash OUT=$@ PART_RECOVERY=$(RECOVERY_IMG)

backup/config.xml: flash/backup-template.xml
	@test -d $(@D) || mkdir $(@D)
	@sed -e s+DOWNLOAD_AGENT+$(FLASH_TOOL_DIR)MTK_AllInOne_DA.bin+ \
		-e s+SCATTER+$(DIR)/flash/scatter.txt+ \
		-e s+BACKUP_DIR+$(DIR)/backup+g \
		$< > $@

result/flash_config_format_cache.xml: flash/format-template.xml
	@sed -e s+DOWNLOAD_AGENT+$(FLASH_TOOL_DIR)MTK_AllInOne_DA.bin+ \
		-e s+SCATTER+$(DIR)/flash/scatter.txt+ \
		-e s+BEGIN_ADDR+0x46180000+g \
		-e s+LENGTH+0x40000000+g \
		$< > $@

backup: backup/config.xml
	$(REBOOT_STB)
	$(FLASH_TOOL) -i $(DIR)/$<

format_cache: result/flash_config_format_cache.xml
	$(REBOOT_STB)
	$(FLASH_TOOL) -i $(DIR)/$<

clean_initram:
	make -C initram clean > /dev/null || exit 0
	rm -f $(BOOT_IMG) || exit 0

update_initram: clean_initram flash_initram

clean: clean_initram
	make -C debian clean_all
	find result/ -type f -not -name Makefile -delete

.PHONY: clean all tool flash_initramfs flash_debian clean_initram backup \
debian initram reboot_stb android_under_debian android flash_android \
flash_original_boot recovery flash_recovery