export ROOT=../
include $(ROOT)Makeconfig

ifndef APK_TOOL
APK_TOOL=/ext4/android-re/apktool
endif

APKS= \
app/dlna.apk \
app/DLNAComponent.apk \
app/Dlnagwapt.apk \
app/dlnaMg.apk \
app/EngineerMode.apk \
app/EngineerModeSim.apk \
app/FactoryTestTool.apk \
app/IPTV.apk \
app/MainControl.apk \
app/mcspbase.apk \
app/MSCAgent.apk \
app/MSGAPK.apk \
app/MTKLogger.apk \
app/NaAgent.apk \
app/netmanager.apk \
app/nmAssistant.apk \
app/OSDService.apk \
app/sqm.apk \
app/sqmprobe.apk \
app/TVClient.apk \
app/tvms-control-release-v0.0.0.3.16_signed.apk \
app/xmpp.apk \
app/ZeroCfgUI.apk \
app/ZTEBrowser.apk \
app/ZTEJavaWatch.apk \
app/ZTEMonitor.apk \
app/zteplayer.apk \
app/ZTEStbCfg.apk \
app/ZTEUpgrade.apk \
app/ztehelper.apk \
app/AccuWeathercom.apk \
priv-app/CDS_INFO.apk

SYSTEM_IMG=$(ORIGINAL_DIR)/system.img
SYSTEM_DIR=system
RESULTS_DIR=results
RESULTS_APPS=$(addprefix $(RESULTS_DIR)/,$(basename $(APKS)))

.SUFFIXES:
.PHONY: clean umount fast_system

all: $(SYSTEM_DIR) $(RESULTS_APPS)

$(RESULTS_DIR)/%: 
	@echo decompiling "$(@F).apk"
#	mkdir -p $@
	$(APK_TOOL) d -o $@ $(SYSTEM_DIR)$(subst $(RESULTS_DIR),,$@).apk

$(SYSTEM_DIR):
	mkdir $(SYSTEM_DIR)
	[ -d $(RESULTS_DIR) ] || mkdir $(RESULTS_DIR)
	sudo mount -o loop,ro $(SYSTEM_IMG) $(SYSTEM_DIR)

# Mount system image content in ram for fast searching
fast_system: $(SYSTEM_DIR)
	[ -d system_ram ] || mkdir system_ram
	[ -n "$(shell grep /proc/mounts system_ram )" ] || sudo mount -t tmpfs none system_ram
	sudo cp -aRv $(SYSTEM_DIR)/* system_ram/

umount: 
	sudo umount ./$(SYSTEM_DIR) || exit 0

clean: umount
	rmdir $(SYSTEM_DIR) || exit 0
	rm -rf $(RESULTS_DIR) || exit 0
	[ -z "$(shell grep /proc/mounts system_ram )" ] || sudo mount -t tmpfs none system_ram
	[ ! -d system_ram ] || rmdir system_ram
