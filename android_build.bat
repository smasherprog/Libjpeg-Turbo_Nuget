set SEVENZIP="C:\Program Files\7-Zip\7z.exe"
set foundfile=""
SET var=%cd%
for %%g in (*.gz) do set foundfile=%%~ng
set filename=%foundfile:.tar=%


call %SEVENZIP% e "%var%/%foundfile%.gz" -aoa
call %SEVENZIP% x "%var%/%foundfile%" -aoa

call xcopy "%var%\%filename%" "%var%\android\libjpeg-turbo\" /E /H /K /y

mkdir android\jni
copy Application.mk android\jni\
copy Android.mk android\
copy AndroidManifest.xml android\
copy /Y jsimd_arm64_neon.S android\libjpeg-turbo\simd\
call xcopy "%var%\include" "%var%\android\include\" /E /H /K /y

cd android
call ndk-build
cd ..
call xcopy "%cd%\android\libs" "%cd%\libjpeg-turbo\lib\native\andriod\clang\" /E /H /K /y

call rd /s /q "android" 
exit