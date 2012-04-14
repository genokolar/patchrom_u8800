#
# Makefile for u8860
#

# The original zip file, MUST be specified by each product
# local-zip-file     := aurora2.0_u8800pro.zip
local-zip-file     :=aurora_2.03_test.zip
# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_u8860.zip

#
local-miui-modified-apps := MiuiSystemUI Mms Settings

# All apps from original ZIP, but has smali files chanded
local-modified-apps := SettingsProvider

# All apks from MIUI
local-miui-removed-apps     := Phone SettingsProvider MediaProvider

# All apps need to be removed from original ZIP file
local-remove-apps := AllBackup SystemUI SetupWizard Cloud NotePad HwIME Superuser MusicFx Launcher2 FileManager HwOUC \
	rootexplorer GenieWidget GalleryGoogle CalendarGoogle GoogleQuickSearchBox GooglePackageVerifier GooglePackageVerifierUpdater \
	GoogleTTS GooglePlayMusic TotemWeather Trebuchet YouTube PinyinIME es com.google.android.music OpenWnn VideoEditor Wiper

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:= rename-zip

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
	cp other/build.prop $(ZIP_DIR)/system/build.prop
	cp other/boot.img $(ZIP_DIR)/
	cp other/enhanced.conf $(ZIP_DIR)/system/etc/enhanced.conf
	cp other/HuaWeiSettings.apk $(ZIP_DIR)/system/app/HuaWeiSettings.apk
#	cp other/app/DolphinBrowser.apk $(ZIP_DIR)/system/app/DolphinBrowser.apk
#	cp other/app/UCBrowser7.apk $(ZIP_DIR)/system/app/UCBrowser7.apk
#	cp other/lib/libCTZip.so $(ZIP_DIR)/system/lib/libwebp.so
#	cp other/lib/libwebp.so $(ZIP_DIR)/system/lib/libwebp.so


rename-zip:
	mv $(TMP_DIR)/fullota.zip $(TMP_DIR)/MIUIv4_u8800_$(BUILD_NUMBER).zip
