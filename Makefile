# TARGET #

TARGET := 3DS
LIBRARY := 0

ifeq ($(TARGET),$(filter $(TARGET),3DS WIIU))
    ifeq ($(strip $(DEVKITPRO)),)
        $(error "Please set DEVKITPRO in your environment. export DEVKITPRO=<path to>devkitPro")
    endif
endif

# COMMON CONFIGURATION #

NAME := Orchestrina

BUILD_DIR := build
OUTPUT_DIR := output
INCLUDE_DIRS := include
SOURCE_DIRS := source

EXTRA_OUTPUT_FILES :=

LIBRARY_DIRS += $(DEVKITPRO)/libctru $(DEVKITPRO)/portlibs/armv6k
LIBRARIES += sftd freetype sfil sf2d citro3d png jpeg z bz2 ctru m

BUILD_FLAGS :=
RUN_FLAGS :=

VERSION_MAJOR := 0
VERSION_MINOR := 4
VERSION_MICRO := 1

# 3DS CONFIGURATION #

TITLE := $(NAME)
DESCRIPTION := Zelda Instrument Player
AUTHOR := LeifEricson, Ryuzaki_MrL
PRODUCT_CODE := CTR-P-ORCH
UNIQUE_ID := 0xF1020

SYSTEM_MODE := 64MB
SYSTEM_MODE_EXT := Legacy

ICON_FLAGS :=

ROMFS_DIR := romfs
BANNER_AUDIO := meta/audio.wav
BANNER_IMAGE := meta/banner2.png
ICON := meta/icon.png
LOGO := meta/logo.bcma.lz

# INTERNAL #

include buildtools/make_base
