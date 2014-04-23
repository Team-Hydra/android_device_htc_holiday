# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common msm8660 configs
$(call inherit-product, device/htc/msm8660-common/msm8660.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/holiday/overlay

# Boot ramdisk setup
PRODUCT_COPY_FILES += \
    device/htc/holiday/ramdisk/init.holiday.rc:root/init.holiday.rc \
    device/htc/holiday/ramdisk/init.holiday.usb.rc:root/init.holiday.usb.rc \
    device/htc/holiday/ramdisk/ueventd.holiday.rc:root/ueventd.holiday.rc \
    device/htc/holiday/ramdisk/fstab.holiday:root/fstab.holiday

# GPS
PRODUCT_PACKAGES += \
    gps.holiday

# Filesystem management tools
PRODUCT_PACKAGES += \
   e2fsck

# Bluetooth
$(call inherit-product, device/htc/msm8660-common/bcm_hcd.mk)

# Wifi
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4330/device-bcm.mk)

# HTC BT audio config
PRODUCT_COPY_FILES += device/htc/holiday/dsp/AudioBTID.csv:system/etc/AudioBTID.csv

# configs
PRODUCT_COPY_FILES += \
    device/htc/holiday/configs/99kernel:system/etc/init.d/99kernel

# Sound DSP
PRODUCT_COPY_FILES += \
    device/htc/holiday/dsp/A1026_CFG.csv:system/etc/A1026_CFG.csv \
    device/htc/holiday/dsp/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    device/htc/holiday/dsp/AdieHWCodec_BEATS_HW.csv:system/etc/AdieHWCodec_BEATS_HW.csv \
    device/htc/holiday/dsp/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
    device/htc/holiday/dsp/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    device/htc/holiday/dsp/AIC3254_REG_DualMic.txt:system/etc/AIC3254_REG_DualMic.txt \
    device/htc/holiday/dsp/AIC3254_REG_DualMic_WA.txt:system/etc/AIC3254_REG_DualMic_WA.txt \
    device/htc/holiday/dsp/AIC3254_REG_DualMic_XD.csv:system/etc/AIC3254_REG_DualMic_XD.csv \
    device/htc/holiday/dsp/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    device/htc/holiday/dsp/CodecDSPID_WA.txt:system/etc/CodecDSPID_WA.txt \
    device/htc/holiday/dsp/CodecDSPID_WB.txt:system/etc/CodecDSPID_WB.txt \
    device/htc/holiday/dsp/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv \
    device/htc/holiday/dsp/TPA2051_CFG_BEATS_HW.csv:system/etc/TPA2051_CFG_BEATS_HW.csv \
    device/htc/holiday/dsp/TPA2051_CFG_XC.csv:system/etc/TPA2051_CFG_XC.csv

# Sound Image DSP
PRODUCT_COPY_FILES += \
    device/htc/holiday/dsp/soundimage/Sound_FM_HP.txt:system/etc/soundimage/Sound_FM_HP.txt \
    device/htc/holiday/dsp/soundimage/Sound_FM_SPK.txt:system/etc/soundimage/Sound_FM_SPK.txt \
    device/htc/holiday/dsp/soundimage/Sound_MFG.txt:system/etc/soundimage/Sound_MFG.txt \
    device/htc/holiday/dsp/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    device/htc/holiday/dsp/soundimage/Sound_Original_MFG.txt:system/etc/soundimage/Sound_Original_MFG.txt \
    device/htc/holiday/dsp/soundimage/Sound_Original_Recording.txt:system/etc/soundimage/Sound_Original_Recording.txt \
    device/htc/holiday/dsp/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
    device/htc/holiday/dsp/soundimage/Sound_Phone_Original.txt:system/etc/soundimage/Sound_Phone_Original.txt \
    device/htc/holiday/dsp/soundimage/Sound_Phone_Original_HP.txt:system/etc/soundimage/Sound_Phone_Original_HP.txt \
    device/htc/holiday/dsp/soundimage/Sound_Phone_Original_HP_WA.txt:system/etc/soundimage/Sound_Phone_Original_HP_WA.txt \
    device/htc/holiday/dsp/soundimage/Sound_Phone_Original_HP_WB.txt:system/etc/soundimage/Sound_Phone_Original_HP_WB.txt \
    device/htc/holiday/dsp/soundimage/Sound_Phone_Original_MFG.txt:system/etc/soundimage/Sound_Phone_Original_MFG.txt \
    device/htc/holiday/dsp/soundimage/Sound_Phone_Original_MFG_WA.txt:system/etc/soundimage/Sound_Phone_Original_MFG_WA.txt \
    device/htc/holiday/dsp/soundimage/Sound_Phone_Original_REC.txt:system/etc/soundimage/Sound_Phone_Original_REC.txt \
    device/htc/holiday/dsp/soundimage/Sound_Phone_Original_REC_WA.txt:system/etc/soundimage/Sound_Phone_Original_REC_WA.txt \
    device/htc/holiday/dsp/soundimage/Sound_Phone_Original_REC_WB.txt:system/etc/soundimage/Sound_Phone_Original_REC_WB.txt \
    device/htc/holiday/dsp/soundimage/Sound_Phone_Original_SPK.txt:system/etc/soundimage/Sound_Phone_Original_SPK.txt \
    device/htc/holiday/dsp/soundimage/Sound_Phone_Original_SPK_WA.txt:system/etc/soundimage/Sound_Phone_Original_SPK_WA.txt \
    device/htc/holiday/dsp/soundimage/Sound_Phone_Original_SPK_WB.txt:system/etc/soundimage/Sound_Phone_Original_SPK_WB.txt \
    device/htc/holiday/dsp/soundimage/Sound_Phone_Original_WA.txt:system/etc/soundimage/Sound_Phone_Original_WA.txt \
    device/htc/holiday/dsp/soundimage/Sound_Rec_Landscape.txt:system/etc/soundimage/Sound_Rec_Landscape.txt \
    device/htc/holiday/dsp/soundimage/Sound_Rec_mono.txt:system/etc/soundimage/Sound_Rec_mono.txt \
    device/htc/holiday/dsp/soundimage/Sound_Rec_Portrait.txt:system/etc/soundimage/Sound_Rec_Portrait.txt \
    device/htc/holiday/dsp/soundimage/Sound_Rec_Voice_record.txt:system/etc/soundimage/Sound_Rec_Voice_record.txt \
    device/htc/holiday/dsp/soundimage/Sound_Recording.txt:system/etc/soundimage/Sound_Recording.txt \
    device/htc/holiday/dsp/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    device/htc/holiday/dsp/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/holiday/dsp/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg \
    device/htc/holiday/dsp/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/holiday/dsp/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/holiday/dsp/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    device/htc/holiday/dsp/soundimage/srsfx_trumedia_music_wide.cfg:system/etc/soundimage/srsfx_trumedia_music_wide.cfg \
    device/htc/holiday/dsp/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg

# Recovery
PRODUCT_COPY_FILES += \
    device/htc/holiday/recovery/init-cwm.rc:recovery/init.rc \
    device/htc/holiday/recovery/sbin/choice_fn:recovery/root/sbin/choice_fn \
    device/htc/holiday/recovery/sbin/detect_key:recovery/root/sbin/detect_key \
    device/htc/holiday/recovery/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    device/htc/holiday/recovery/sbin/htcbatt:recovery/root/sbin/htcbatt \
    device/htc/holiday/recovery/sbin/power_test:recovery/root/sbin/power_test

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/htc/holiday/keychars/holiday-keypad.kcm:system/usr/keychars/holiday-keypad.kcm \
    device/htc/holiday/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/holiday/keylayout/cy8c-touchscreen.kl:system/usr/keylayout/cy8c-touchscreen.kl \
    device/htc/holiday/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/holiday/keylayout/holiday-keypad.kl:system/usr/keylayout/holiday-keypad.kl

# Input device config
PRODUCT_COPY_FILES += \
    device/htc/holiday/idc/cy8c-touchscreen.idc:system/usr/idc/cy8c-touchscreen.idc \
    device/htc/holiday/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Adreno Drivers
PRODUCT_COPY_FILES += \
    device/htc/holiday/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
    device/htc/holiday/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
    device/htc/holiday/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
    device/htc/holiday/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/htc/holiday/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

# Wifi Firmware
PRODUCT_COPY_FILES += \
    device/htc/holiday/firmware/BCM4330B1.hcd:system/etc/firmware/BCM4330B1.hcd \
    device/htc/holiday/firmware/fw_bcm4330_apsta_b1.bin:system/etc/firmware/fw_bcm4330_apsta_b1.bin \
    device/htc/holiday/firmware/fw_bcm4330_apsta_b2.bin:system/etc/firmware/fw_bcm4330_apsta_b2.bin \
    device/htc/holiday/firmware/fw_bcm4330_b1.bin:system/etc/firmware/fw_bcm4330_b1.bin \
    device/htc/holiday/firmware/fw_bcm4330_b2.bin:system/etc/firmware/fw_bcm4330_b2.bin \
    device/htc/holiday/firmware/fw_bcm4330_p2p_b1.bin:system/etc/firmware/fw_bcm4330_p2p_b1.bin \
    device/htc/holiday/firmware/fw_bcm4330_p2p_b2.bin:system/etc/firmware/fw_bcm4330_p2p_b2.bin

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y

# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# call the proprietary setup
$(call inherit-product-if-exists, vendor/htc/holiday/holiday-vendor.mk)

# media profiles and capabilities spec
$(call inherit-product, device/htc/holiday/media_a1026.mk)

## htc audio settings
$(call inherit-product, device/htc/holiday/media_htcaudio.mk)

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

# Device id
PRODUCT_NAME := full_holiday
PRODUCT_DEVICE := holiday
