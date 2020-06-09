
ifndef OUT
$(error No output file specified)
endif

ifndef FLASH_TOOL_DIR
$(warning "No FLASH_TOOL_DIR specified, using default")
override FLASH_TOOL_DIR = /ext4/SP-Flash-Tool
endif

DIR = $(shell pwd)
PART = 

ifdef PART_PRELOADER
PART += <rom index="0" enable="true">$(PART_PRELOADER)</rom>
else
PART += <rom index="0" enable="false"></rom>
endif
ifdef PART_MBR
PART += <rom index="1" enable="true">$(PART_MBR)</rom>
else
PART += <rom index="1" enable="false"></rom>
endif
ifdef PART_EBR1
PART += <rom index="2" enable="true">$(PART_EBR1)</rom>
else
PART += <rom index="2" enable="false"></rom>
endif
ifdef PART_PRO_INFO
PART += <rom index="3" enable="true">$(PART_PRO_INFO)</rom>
else
PART += <rom index="3" enable="false"></rom>
endif
ifdef PART_NVRAM
PART += <rom index="4" enable="true">$(PART_NVRAM)</rom>
else
PART += <rom index="4" enable="false"></rom>
endif
ifdef PART_ZTECFG
PART += <rom index="5" enable="true">$(PART_ZTECFG)</rom>
else
PART += <rom index="5" enable="false"></rom>
endif
ifdef PART_PROTECT_F
PART += <rom index="6" enable="true">$(PART_PROTECT_F)</rom>
else
PART += <rom index="6" enable="false"></rom>
endif
ifdef PART_PROTECT_S
PART += <rom index="7" enable="true">$(PART_PROTECT_S)</rom>
else
PART += <rom index="7" enable="false"></rom>
endif
ifdef PART_SECCFG
PART += <rom index="8" enable="true">$(PART_SECCFG)</rom>
else
PART += <rom index="8" enable="false"></rom>
endif
ifdef PART_UBOOT
PART += <rom index="9" enable="true">$(PART_UBOOT)</rom>
else
PART += <rom index="9" enable="false"></rom>
endif
ifdef PART_BOOTIMG
PART += <rom index="10" enable="true">$(PART_BOOTIMG)</rom>
else
PART += <rom index="10" enable="false"></rom>
endif
ifdef PART_RECOVERY
PART += <rom index="11" enable="true">$(PART_RECOVERY)</rom>
else
PART += <rom index="11" enable="false"></rom>
endif
ifdef PART_SEC_RO
PART += <rom index="12" enable="true">$(PART_SEC_RO)</rom>
else
PART += <rom index="12" enable="false"></rom>
endif
ifdef PART_MISC
PART += <rom index="13" enable="true">$(PART_MISC)</rom>
else
PART += <rom index="13" enable="false"></rom>
endif
ifdef PART_LOGO
PART += <rom index="14" enable="true">$(PART_LOGO)</rom>
else
PART += <rom index="14" enable="false"></rom>
endif
ifdef PART_EBR2
PART += <rom index="15" enable="true">$(PART_EBR2)</rom>
else
PART += <rom index="15" enable="false"></rom>
endif
ifdef PART_EXPDB
PART += <rom index="16" enable="true">$(PART_EXPDB)</rom>
else
PART += <rom index="16" enable="false"></rom>
endif
ifdef PART_TEE1
PART += <rom index="17" enable="true">$(PART_TEE1)</rom>
else
PART += <rom index="17" enable="false"></rom>
endif
ifdef PART_TEE2
PART += <rom index="18" enable="true">$(PART_TEE2)</rom>
else
PART += <rom index="18" enable="false"></rom>
endif
ifdef PART_KB
PART += <rom index="19" enable="true">$(PART_KB)</rom>
else
PART += <rom index="19" enable="false"></rom>
endif
ifdef PART_DKB
PART += <rom index="20" enable="true">$(PART_DKB)</rom>
else
PART += <rom index="20" enable="false"></rom>
endif
ifdef PART_ANDROID
PART += <rom index="21" enable="true">$(PART_ANDROID)</rom>
else
PART += <rom index="21" enable="false"></rom>
endif
ifdef PART_CACHE
PART += <rom index="22" enable="true">$(PART_CACHE)</rom>
else
PART += <rom index="22" enable="false"></rom>
endif
ifdef PART_USRDATA
PART += <rom index="23" enable="true">$(PART_USRDATA)</rom>
else
PART += <rom index="23" enable="false"></rom>
endif
ifdef PART_FAT
PART += <rom index="24" enable="true">$(PART_FAT)</rom>
else
PART += <rom index="24" enable="false"></rom>
endif
ifdef PART_BMTPOOL
PART += <rom index="25" enable="true">$(PART_BMTPOOL)</rom>
else
PART += <rom index="25" enable="false"></rom>
endif

$(OUT):
	$(info Generating $(@F))
	@echo '<?xml version="1.0" encoding="UTF-8" ?>' > $@
	@echo '<flashtool-config version="2.0">' >> $@
	@echo '	<general>' >> $@
	@echo '		<chip-name>MT8127</chip-name>' >> $@
	@echo '		<storage-type>EMMC</storage-type>' >> $@
	@echo '		<download-agent>$(FLASH_TOOL_DIR)/MTK_AllInOne_DA.bin</download-agent>' >> $@
	@echo '		<scatter>$(DIR)/scatter.txt</scatter>' >> $@
	@echo '		<authentication></authentication>' >> $@
	@echo '		<certification></certification>' >> $@
	@echo '		<rom-list>$(PART)</rom-list>' >> $@
	@echo '		<connection type="BromUSB" high-speed="true" power="AutoDetect" da_log_level="Info" timeout-count="3600000" com-port="" />' >> $@
	@echo '		<checksum-level>none</checksum-level>' >> $@
	@echo '	</general>' >> $@
	@echo '	<commands>' >> $@
	@echo '		<download-only>' >> $@
	@echo '			<da-download-all />' >> $@
	@echo '		</download-only>' >> $@
	@echo '	</commands>' >> $@
	@echo '</flashtool-config>' >> $@

.PHONY: $(OUT)
