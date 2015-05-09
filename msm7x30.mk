#
# Copyright (C) 2011 The CyanogenMod Project
#
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

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Common proprietary blobs
$(call inherit-product-if-exists, vendor/htc/msm7x30-common/msm7x30-vendor.mk)

# Wifi firmware
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/device-bcm.mk)

# Device-Specific HALs
PRODUCT_PACKAGES += \
    lights.msm7x30 \
    sensors.msm7x30 \
    power.msm7x30

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm7x30 \
    audio.usb.default \
    libaudio-resampler \
    libaudioutils

# Audio policy config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf \

# Camera
PRODUCT_PACKAGES += \
    camera.msm7x30 \
    libsurfaceflinger_client

# Display
PRODUCT_PACKAGES += \
    copybit.msm7x30 \
    gralloc.msm7x30 \
    hwcomposer.msm7x30 \
    libgenlock \
    memtrack.msm7x30

# GPS
PRODUCT_PACKAGES += \
    gps.msm7x30

# Lights
PRODUCT_PACKAGES += \
    lights.msm7x30

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# OMX
PRODUCT_PACKAGES += \
    libdashplayer \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libstagefrighthw

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Power HAL
PRODUCT_PACKAGES += \
    power.msm7x30

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.rc \
    init.qcom.usb.rc \
    ueventd.qcom.rc

# Sensors
PRODUCT_PACKAGES += \
    sensors.msm7x30

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Wifi
PRODUCT_PACKAGES += \
    libnetcmdiface \
    macloader \
    dhcpcd.conf \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    setup_fs

# Common build.prop overrides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \
    persist.sys.strictmode.visual=0 \
    ro.gsm.2nd_data_retry_config=max_retries=3,2000,2000,2000 \
    com.qc.hardware=true \
    rild.libpath=/system/lib/libhtc_ril.so \
    ro.ril.ecc.HTC-GCC=999,112,997 \
    ro.ril.ecc.HTC-WWE=999 \
    ro.ril.ecc.HTC-ELL=92,93,94 \
    ro.ril.enable.a52.HTC-ITA=1 \
    ro.ril.enable.a53.HTC-ITA=1 \
    ro.ril.enable.a52=0 \
    ro.ril.enable.a53=1 \
    ro.ril.disable.fd.plmn.prefix=23402,23410,23411 \
    ro.ril.enable.sdr=1 \
    ro.ril.enable.amr.wideband=0 \
    ro.ril.enable.dtm=0 \
    ro.ril.gprsclass=12 \
    ro.ril.hsdpa.category=10 \
    ro.ril.hsupa.category=6 \
    ro.ril.hsxpa=2 \
    ro.ril.def.agps.mode=2 \
    ro.ril.disable.power.collapse=1 \
    ro.telephony.default_network=0 \
    mobiledata.interfaces=gannet0,rmnet0,rmnet1,rmnet2 \
    ro.use_data_netmgrd=true \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15 \
    ro.tethering.kb_disconnect=1 \
    ro.opengles.version=131072 \
    debug.composition.type=gpu \
    debug.sf.hw=1 \
    debug.egl.hw=1 \
    debug.egl.recordable.rgba8888=1 \
    persist.sys.media.use-awesome=true \
    media.stagefright.use-awesome=true \
    lpa.decode=false \
    lpa.use-stagefright=false \
    af.resampler.quality=255 \
    camera2.portability.force_api=1 \
    persist.sys.usb.config=mtp \
    ro.vold.umsdirtyratio=20 \
    ro.sys.fw.bg_apps_limit=16 \
    ro.config.max_starting_bg=8 \
    config.disable_atlas=true \
    ro.ksm.default=1 \
    ro.setupwizard.enable_bypass=1 \
    ro.com.google.locationfeatures=1 \
    ro.product.locale.language=en \
    ro.product.locale.region=US \
    persist.sys.strictmode.visual=0 \
    persist.sys.strictmode.disable=1

# Use ART small mode
# http://source.android.com/devices/tech/dalvik/configure.html#with_art_small_mode
PRODUCT_PROPERTY_OVERRIDES += \
	dalvik.vm.dex2oat-filter=interpret-only \
	dalvik.vm.dex2oat-flags=--no-watch-dog \
	dalvik.vm.image-dex2oat-filter=speed

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

# use high-density artwork where available
PRODUCT_LOCALES += en
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
