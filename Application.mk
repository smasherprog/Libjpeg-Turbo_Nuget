LOCAL_PATH := $(call my-dir)
APP_SHORT_COMMANDS := true
NDK_TOOLCHAIN_VERSION := clang
APP_PROJECT_PATH := $(shell pwd)
APP_BUILD_SCRIPT := $(LOCAL_PATH)/../Android.mk
APP_ABI := all