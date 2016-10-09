LOCAL_PATH := $(call my-dir)
APP_SHORT_COMMANDS := true
NDK_TOOLCHAIN_VERSION := clang
APP_PROJECT_PATH := $(shell pwd)
APP_BUILD_SCRIPT := $(LOCAL_PATH)/../Android.mk
APP_ABI := x86_64 x86 mips mips64 armeabi-v7a arm64-v8a armeabi
APP_MODULES := libjpeg-turbo_mt libjpeg-turbo_md