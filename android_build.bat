SET var=%cd%
SET dst_src=libjpeg-turbo-android-src
set filename=%~1

call xcopy "%var%\%filename%" "%var%\%dst_src%\libjpeg-turbo\" /E /H /K /y

mkdir %dst_src%\jni
copy Application.mk %dst_src%\jni\
copy Android.mk %dst_src%\
copy AndroidManifest.xml %dst_src%\
copy /Y jsimd_arm64_neon.S %dst_src%\libjpeg-turbo\simd\

mkdir %var%\%dst_src%\include
copy config.h %var%\%dst_src%\include
copy jconfig.h %var%\%dst_src%\include
copy jconfigint.h %var%\%dst_src%\include
copy turbojpeg.h %var%\%dst_src%\include
copy jsimdcfg.inc %var%\%dst_src%\include

cd %dst_src%
call ndk-build
cd ..

call rd /s /q "%var%\%dst_src%\obj\local\arm64-v8a\objs"
call rd /s /q "%var%\%dst_src%\obj\local\armeabi\objs"
call rd /s /q "%var%\%dst_src%\obj\local\armeabi-v7a\objs"
call rd /s /q "%var%\%dst_src%\obj\local\mips64\objs"
call rd /s /q "%var%\%dst_src%\obj\local\mips\objs"
call rd /s /q "%var%\%dst_src%\obj\local\x86\objs"
call rd /s /q "%var%\%dst_src%\obj\local\x86_64\objs"

call xcopy "%cd%\%dst_src%\obj\local" "%var%\libjpeg_turbo_nuget\lib\native\android\clang\" /E /H /K /y

call rd /s /q "%var%\%dst_src%"
exit