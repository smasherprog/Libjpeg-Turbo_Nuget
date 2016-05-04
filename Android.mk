LOCAL_PATH := $(call my-dir)

armeabi_c_flags := \
	-D__ARM_HAVE_NEON \
	-DSIZEOF_SIZE_T=4 \
	
armeabi_asm_flags := \
	
armeabi_src_files := \
	libjpeg-turbo/simd/jsimd_arm.c \
	libjpeg-turbo/simd/jsimd_arm_neon.S \

armeabi_exclude_files := 

arm64-v8a_c_flags := \
	-D__ARM_HAVE_NEON \
	-DSIZEOF_SIZE_T=8 \
	
arm64-v8a_asm_flags := \
	
arm64-v8a_src_files := \
	libjpeg-turbo/simd/jsimd_arm64.c \
	libjpeg-turbo/simd/jsimd_arm64_neon.S \
		
arm64-v8a_exclude_files := \


armeabi-v7a-hard_c_flags := \
	-D__ARM_HAVE_NEON \
	-DSIZEOF_SIZE_T=4 \
	
armeabi-v7a-hard_asm_flags := \
	
armeabi-v7a-hard_src_files := \
	libjpeg-turbo/simd/jsimd_arm.c \
	libjpeg-turbo/simd/jsimd_arm_neon.S \

armeabi-v7a-hard_exclude_files := 
		
		
armeabi-v7a_c_flags := \
	-D__ARM_HAVE_NEON \
	-DSIZEOF_SIZE_T=4 \
	
armeabi-v7a_asm_flags := \
	
armeabi-v7a_src_files := \
	libjpeg-turbo/simd/jsimd_arm.c \
	libjpeg-turbo/simd/jsimd_arm_neon.S \

armeabi-v7a_exclude_files := 


x86_64_c_flags := \
	-DSIZEOF_SIZE_T=8 \
	
x86_64_asm_flags := \
	-D__x86_64__ \
	
x86_64_src_files := \
	libjpeg-turbo/simd/jsimd_x86_64.c \
	libjpeg-turbo/simd/jchuff-sse2-64.asm \
	libjpeg-turbo/simd/jfdctflt-sse-64.asm \
	libjpeg-turbo/simd/jccolor-sse2-64.asm \
	libjpeg-turbo/simd/jcgray-sse2-64.asm \
	libjpeg-turbo/simd/jcsample-sse2-64.asm \
	libjpeg-turbo/simd/jdcolor-sse2-64.asm \
	libjpeg-turbo/simd/jdmerge-sse2-64.asm \
	libjpeg-turbo/simd/jdsample-sse2-64.asm \
	libjpeg-turbo/simd/jfdctfst-sse2-64.asm \
	libjpeg-turbo/simd/jfdctint-sse2-64.asm \
	libjpeg-turbo/simd/jidctflt-sse2-64.asm \
	libjpeg-turbo/simd/jidctfst-sse2-64.asm \
	libjpeg-turbo/simd/jidctint-sse2-64.asm \
	libjpeg-turbo/simd/jidctred-sse2-64.asm \
	libjpeg-turbo/simd/jquantf-sse2-64.asm \
	libjpeg-turbo/simd/jquanti-sse2-64.asm \
	
x86_64_exclude_files := 

x86_c_flags := \
	-DSIZEOF_SIZE_T=4 \
	
x86_asm_flags := 
	
x86_src_files := \
	libjpeg-turbo/simd/jsimd_i386.c \
	libjpeg-turbo/simd/jchuff-sse2.asm \
	libjpeg-turbo/simd/jsimdcpu.asm \
	libjpeg-turbo/simd/jfdctflt-3dn.asm \
	libjpeg-turbo/simd/jidctflt-3dn.asm \
	libjpeg-turbo/simd/jquant-3dn.asm \
	libjpeg-turbo/simd/jccolor-mmx.asm \
	libjpeg-turbo/simd/jcgray-mmx.asm \
	libjpeg-turbo/simd/jcsample-mmx.asm \
	libjpeg-turbo/simd/jdcolor-mmx.asm \
	libjpeg-turbo/simd/jdmerge-mmx.asm \
	libjpeg-turbo/simd/jdsample-mmx.asm \
	libjpeg-turbo/simd/jfdctfst-mmx.asm \
	libjpeg-turbo/simd/jfdctint-mmx.asm \
	libjpeg-turbo/simd/jidctfst-mmx.asm \
	libjpeg-turbo/simd/jidctint-mmx.asm \
	libjpeg-turbo/simd/jidctred-mmx.asm \
	libjpeg-turbo/simd/jquant-mmx.asm \
	libjpeg-turbo/simd/jfdctflt-sse.asm \
	libjpeg-turbo/simd/jidctflt-sse.asm \
	libjpeg-turbo/simd/jquant-sse.asm \
	libjpeg-turbo/simd/jccolor-sse2.asm \
	libjpeg-turbo/simd/jcgray-sse2.asm \
	libjpeg-turbo/simd/jcsample-sse2.asm \
	libjpeg-turbo/simd/jdcolor-sse2.asm \
	libjpeg-turbo/simd/jdmerge-sse2.asm \
	libjpeg-turbo/simd/jdsample-sse2.asm \
	libjpeg-turbo/simd/jfdctfst-sse2.asm \
	libjpeg-turbo/simd/jfdctint-sse2.asm \
	libjpeg-turbo/simd/jidctflt-sse2.asm \
	libjpeg-turbo/simd/jidctfst-sse2.asm \
	libjpeg-turbo/simd/jidctint-sse2.asm \
	libjpeg-turbo/simd/jidctred-sse2.asm \
	libjpeg-turbo/simd/jquantf-sse2.asm \
	libjpeg-turbo/simd/jquanti-sse2.asm \

x86_exclude_files := 

mips_c_flags := \
	-DSIZEOF_SIZE_T=4 \
  
mips_asm_flags := \

mips_src_files :=  \
	libjpeg-turbo/simd/jsimd_mips.c \
	libjpeg-turbo/simd/jsimd_mips_dspr2.S \

mips_exclude_files := \


mips64_c_flags := \
	-DSIZEOF_SIZE_T=8 \
	
mips64_asm_flags := \

mips64_src_files := \
	libjpeg-turbo/simd/jsimd_mips.c \
	libjpeg-turbo/simd/jsimd_mips_dspr2.S \

mips64_exclude_files := \

common_src_files := \
	libjpeg-turbo/jcapimin.c \
	libjpeg-turbo/jcapistd.c \
	libjpeg-turbo/jccoefct.c \
	libjpeg-turbo/jccolor.c \
	libjpeg-turbo/jcdctmgr.c \
	libjpeg-turbo/jchuff.c \
	libjpeg-turbo/jcinit.c \
	libjpeg-turbo/jcmainct.c \
	libjpeg-turbo/jcmarker.c \
	libjpeg-turbo/jcmaster.c \
	libjpeg-turbo/jcomapi.c \
	libjpeg-turbo/jcparam.c \
	libjpeg-turbo/jcphuff.c \
	libjpeg-turbo/jcprepct.c \
	libjpeg-turbo/jcsample.c \
	libjpeg-turbo/jctrans.c \
	libjpeg-turbo/jdapimin.c \
	libjpeg-turbo/jdapistd.c \
	libjpeg-turbo/jdatadst.c \
	libjpeg-turbo/jdatasrc.c \
	libjpeg-turbo/jdcoefct.c \
	libjpeg-turbo/jdcolor.c \
	libjpeg-turbo/jddctmgr.c \
	libjpeg-turbo/jdhuff.c \
	libjpeg-turbo/jdinput.c \
	libjpeg-turbo/jdmainct.c \
	libjpeg-turbo/jdmarker.c \
	libjpeg-turbo/jdmaster.c \
	libjpeg-turbo/jdmerge.c \
	libjpeg-turbo/jdphuff.c \
	libjpeg-turbo/jdpostct.c \
	libjpeg-turbo/jdsample.c \
	libjpeg-turbo/jdtrans.c \
	libjpeg-turbo/jerror.c \
	libjpeg-turbo/jfdctflt.c \
	libjpeg-turbo/jfdctfst.c \
	libjpeg-turbo/jfdctint.c \
	libjpeg-turbo/jidctflt.c \
	libjpeg-turbo/jidctfst.c \
	libjpeg-turbo/jidctint.c \
	libjpeg-turbo/jidctred.c \
	libjpeg-turbo/jquant1.c \
	libjpeg-turbo/jquant2.c \
	libjpeg-turbo/jutils.c \
	libjpeg-turbo/jmemmgr.c \
	libjpeg-turbo/jmemnobs.c \
	libjpeg-turbo/jaricom.c \
	libjpeg-turbo/jcarith.c \
	libjpeg-turbo/jdarith.c \
	libjpeg-turbo/turbojpeg.c \
	libjpeg-turbo/transupp.c \
	libjpeg-turbo/jdatadst-tj.c \
	libjpeg-turbo/jdatasrc-tj.c \

common_c_includes := \
	$(LOCAL_PATH)/include \
	$(LOCAL_PATH)/libjpeg-turbo/simd \
	$(LOCAL_PATH)/libjpeg-turbo \


common_c_flags := \
	-DBUILD="20141110" \
	-DC_ARITH_CODING_SUPPORTED=1 \
	-DD_ARITH_CODING_SUPPORTED=1 \
	-DBITS_IN_JSAMPLE=8 \
	-DHAVE_DLFCN_H=1 \
	-DHAVE_INTTYPES_H=1 \
	-DHAVE_LOCALE_H=1 \
	-DHAVE_MEMCPY=1 \
	-DHAVE_MEMORY_H=1 \
	-DHAVE_MEMSET=1 \
	-DHAVE_STDDEF_H=1 \
	-DHAVE_STDINT_H=1 \
	-DHAVE_STDLIB_H=1 \
	-DHAVE_STRINGS_H=1 \
	-DHAVE_STRING_H=1 \
	-DHAVE_SYS_STAT_H=1 \
	-DHAVE_SYS_TYPES_H=1 \
	-DHAVE_UNISTD_H=1 \
	-DHAVE_UNSIGNED_CHAR=1 \
	-DHAVE_UNSIGNED_SHORT=1 \
	-DINLINE="inline __attribute__((always_inline))" \
	-DJPEG_LIB_VERSION=62 \
	-DLIBJPEG_TURBO_VERSION="1.4.2" \
	-DMEM_SRCDST_SUPPORTED=1 \
	-DNEED_SYS_TYPES_H=1 \
	-DSTDC_HEADERS=1 \
	-DWITH_SIMD=1 \

common_asm_flags := -DELF
target_arch := $(TARGET_ARCH_ABI)
	
target_c_flags    := $(common_c_flags) $($(target_arch)_c_flags)
target_c_includes := $(common_c_includes)
target_asm_flags  := $(common_asm_flags) $($(target_arch)_asm_flags)
target_src_files  := $(common_src_files) $($(target_arch)_src_files)
target_src_files  := $(filter-out $($(target_arch)_exclude_files), $(target_src_files))	
	
include $(CLEAR_VARS)
LOCAL_SRC_FILES := $(target_src_files)
LOCAL_CFLAGS := $(target_c_flags)
LOCAL_C_INCLUDES := $(target_c_includes)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := libjpeg-turbo_md
LOCAL_ASMFLAGS := $(target_asm_flags)
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := $(target_src_files)
LOCAL_CFLAGS := $(target_c_flags)
LOCAL_C_INCLUDES := $(target_c_includes)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := libjpeg-turbo_mt
LOCAL_ASMFLAGS := $(target_asm_flags)
include $(BUILD_STATIC_LIBRARY)


