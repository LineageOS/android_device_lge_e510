USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/e510/BoardConfigVendor.mk

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7k
TARGET_CPU_ABI := armeabi
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_BOARD_PLATFORM := msm7k
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := e510

TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

BOARD_KERNEL_CMDLINE := mem=471M console=ttyMSM2,115200n8 androidboot.hardware=univa
BOARD_KERNEL_BASE := 0x12800000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00440000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0e600000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x09f80000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/lge/e510/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

TARGET_PROVIDES_LIBAUDIO := true
TARGET_PROVIDES_LIBRIL := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# to enable the GPS HAL
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := e510
# AMSS version to use for GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

BOARD_EGL_CFG := device/lge/e510/configs/egl.cfg

TARGET_SPECIFIC_HEADER_PATH := device/lge/e510/include
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_CAMERA_USE_GETBUFFERINFO := true
BOARD_USE_CAF_LIBCAMERA := true

BOARD_WLAN_DEVICE := bcm4330
WIFI_DRIVER_FW_STA_PATH         := "/system/etc/wl/rtecdc.bin"
WIFI_DRIVER_FW_AP_PATH          := "/system/etc/wl/rtecdc-apsta.bin"
WIFI_DRIVER_MODULE_NAME         := "wireless"
WIFI_DRIVER_MODULE_PATH         := "/system/lib/modules/wireless.ko"
WIFI_DRIVER_MODULE_ARG          := "firmware_path=/etc/wl/rtecdc.bin nvram_path=/etc/wl/nvram.txt config_path=/data/misc/wifi/config"
WPA_SUPPLICANT_VERSION          := VER_0_6_X
WIFI_DRIVER_HAS_LGE_SOFTAP      := true
BOARD_WEXT_NO_COMBO_SCAN       := true
BOARD_WPA_SUPPLICANT_DRIVER := WEXT

## This is failing hard on 4330. hcitool hangs
#BOARD_FM_DEVICE := bcm4329
#BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

BOARD_GLOBAL_CFLAGS += -DCHARGERMODE_CMDLINE_NAME='"lge.reboot"' -DCHARGERMODE_CMDLINE_VALUE='"pwroff"'
