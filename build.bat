set SEVENZIP="C:\Program Files\7-Zip\7z.exe"
set foundfile=""
SET var=%cd%
set dstnuget=libjpeg_turbo_nuget

for %%g in (*.gz) do set foundfile=%%~ng
set filename=%foundfile:.tar=%

call %SEVENZIP% e "%var%/%foundfile%.gz" -aoa
call %SEVENZIP% x "%var%/%foundfile%" -aoa

call del %foundfile%
call del pax_global_header

mkdir %dstnuget%\build\native\include
copy config.h %dstnuget%\build\native\include
copy jconfig.h %dstnuget%\build\native\include
copy jconfigint.h %dstnuget%\build\native\include
copy turbojpeg.h %dstnuget%\build\native\include
copy jsimdcfg.inc %dstnuget%\build\native\include

start cmd.exe /k "android_build.bat"

if exist "C:/Program Files (x86)/MSBuild/12.0/Bin/msbuild.exe" (
	call xcopy "%var%\%filename%" "%var%\libjpeg-turbo-src-64-VS2013\" /E /H /K /y
	call xcopy "%var%\%filename%" "%var%\libjpeg-turbo-src-32-VS2013\" /E /H /K /y
	copy jconfigint.h "%var%\libjpeg-turbo-src-64-VS2013"
	copy jconfigint.h "%var%\libjpeg-turbo-src-32-VS2013"
	call copy nasm.exe libjpeg-turbo-src-32-VS2013\simd\
	call copy nasm.exe libjpeg-turbo-src-64-VS2013\simd\
	start /wait cmd.exe /k "windows_build_each.bat "libjpeg-turbo-src-32-VS2013" "Visual Studio 12 2013" "%var%" "/p:OutDir=../%dstnuget%/lib/native/v120/windesktop/msvcstl/Win32/Debug/md/ /p:Configuration=Debug /p:RuntimeLibrary=MultiThreadedDebugDLL /p:DebugSymbols=true /p:DebugType=pdbonly" "MultiThreadedDebugDLL""
	start /wait cmd.exe /k "windows_build_each.bat "libjpeg-turbo-src-32-VS2013" "Visual Studio 12 2013" "%var%" "/p:OutDir=../%dstnuget%/lib/native/v120/windesktop/msvcstl/Win32/Debug/mt/ /p:Configuration=Debug /p:RuntimeLibrary=MultiThreadedDebug /p:DebugSymbols=true /p:DebugType=pdbonly" "MultiThreadedDebug""
	start /wait cmd.exe /k "windows_build_each.bat "libjpeg-turbo-src-32-VS2013" "Visual Studio 12 2013" "%var%" "/p:OutDir=../%dstnuget%/lib/native/v120/windesktop/msvcstl/Win32/Release/md/ /p:Configuration=Release /p:RuntimeLibrary=MultiThreadedDLL /p:DebugSymbols=false /p:DebugType=none" "MultiThreadedDLL""
	start /wait cmd.exe /k "windows_build_each.bat "libjpeg-turbo-src-32-VS2013" "Visual Studio 12 2013" "%var%" "/p:OutDir=../%dstnuget%/lib/native/v120/windesktop/msvcstl/Win32/Release/mt/ /p:Configuration=Release /p:RuntimeLibrary=MultiThreaded /p:DebugSymbols=false /p:DebugType=none" "MultiThreaded""
	start /wait cmd.exe /k "windows_build_each.bat "libjpeg-turbo-src-64-VS2013" "Visual Studio 12 2013 Win64" "%var%" "/p:OutDir=../%dstnuget%/lib/native/v120/windesktop/msvcstl/x64/Debug/md/ /p:Configuration=Debug /p:RuntimeLibrary=MultiThreadedDebugDLL /p:DebugSymbols=true /p:DebugType=pdbonly" "MultiThreadedDebugDLL""
	start /wait cmd.exe /k "windows_build_each.bat "libjpeg-turbo-src-64-VS2013" "Visual Studio 12 2013 Win64" "%var%" "/p:OutDir=../%dstnuget%/lib/native/v120/windesktop/msvcstl/x64/Debug/mt/ /p:Configuration=Debug /p:RuntimeLibrary=MultiThreadedDebug /p:DebugSymbols=true /p:DebugType=pdbonly" "MultiThreadedDebug""
	start /wait cmd.exe /k "windows_build_each.bat "libjpeg-turbo-src-64-VS2013" "Visual Studio 12 2013 Win64" "%var%" "/p:OutDir=../%dstnuget%/lib/native/v120/windesktop/msvcstl/x64/Release/md/ /p:Configuration=Release /p:Platform=x64 /p:PlatformToolset=v120 /p:DebugSymbols=false /p:DebugType=none" "MultiThreadedDLL""
	start /wait cmd.exe /k "windows_build_each.bat "libjpeg-turbo-src-64-VS2013" "Visual Studio 12 2013 Win64" "%var%" "/p:OutDir=../%dstnuget%/lib/native/v120/windesktop/msvcstl/x64/Release/mt/ /p:Configuration=Release /p:Platform=x64 /p:PlatformToolset=v120 /p:DebugSymbols=false /p:DebugType=none" "MultiThreaded""
	call rd /s /q "libjpeg-turbo-src-32-VS2013"
	call rd /s /q "libjpeg-turbo-src-64-VS2013"
)
if exist "C:/Program Files (x86)/MSBuild/14.0/Bin/msbuild.exe" (
	call xcopy "%var%\%filename%" "%var%\libjpeg-turbo-src-32-VS2015\" /E /H /K /y
	call xcopy "%var%\%filename%" "%var%\libjpeg-turbo-src-64-VS2015\" /E /H /K /y
	copy jconfigint.h "%var%\libjpeg-turbo-src-32-VS2015"
	copy jconfigint.h "%var%\libjpeg-turbo-src-64-VS2015"
	
	call copy nasm.exe libjpeg-turbo-src-32-VS2015\simd\
	call copy nasm.exe libjpeg-turbo-src-64-VS2015\simd\
	start /wait cmd.exe /k "windows_build_each.bat "libjpeg-turbo-src-32-VS2015" "Visual Studio 14 2015" "%var%" "/p:OutDir=../%dstnuget%/lib/native/v140/windesktop/msvcstl/Win32/Debug/md/ /p:Configuration=Debug /p:Platform=Win32 /p:PlatformToolset=v140 /p:DebugSymbols=true /p:DebugType=pdbonly" "MultiThreadedDebugDLL""
	start /wait cmd.exe /k "windows_build_each.bat "libjpeg-turbo-src-32-VS2015" "Visual Studio 14 2015" "%var%" "/p:OutDir=../%dstnuget%/lib/native/v140/windesktop/msvcstl/Win32/Debug/mt/ /p:Configuration=Debug /p:Platform=Win32 /p:PlatformToolset=v140 /p:DebugSymbols=true /p:DebugType=pdbonly" "MultiThreadedDebug""
	start /wait cmd.exe /k "windows_build_each.bat "libjpeg-turbo-src-32-VS2015" "Visual Studio 14 2015" "%var%" "/p:OutDir=../%dstnuget%/lib/native/v140/windesktop/msvcstl/Win32/Release/md/ /p:Configuration=Release /p:Platform=Win32 /p:PlatformToolset=v140 /p:DebugSymbols=false /p:DebugType=none" "MultiThreadedDLL""
	start /wait cmd.exe /k "windows_build_each.bat "libjpeg-turbo-src-32-VS2015" "Visual Studio 14 2015" "%var%" "/p:OutDir=../%dstnuget%/lib/native/v140/windesktop/msvcstl/Win32/Release/mt/ /p:Configuration=Release /p:Platform=Win32 /p:PlatformToolset=v140 /p:DebugSymbols=false /p:DebugType=none" "MultiThreaded""
	start /wait cmd.exe /k "windows_build_each.bat "libjpeg-turbo-src-64-VS2015" "Visual Studio 14 2015 Win64" "%var%" "/p:OutDir=../%dstnuget%/lib/native/v140/windesktop/msvcstl/x64/Debug/md/ /p:Configuration=Debug /p:Platform=x64 /p:PlatformToolset=v140 /p:DebugSymbols=true /p:DebugType=pdbonly" "MultiThreadedDebugDLL""
	start /wait cmd.exe /k "windows_build_each.bat "libjpeg-turbo-src-64-VS2015" "Visual Studio 14 2015 Win64" "%var%" "/p:OutDir=../%dstnuget%/lib/native/v140/windesktop/msvcstl/x64/Debug/mt/ /p:Configuration=Debug /p:Platform=x64 /p:PlatformToolset=v140 /p:DebugSymbols=true /p:DebugType=pdbonly" "MultiThreadedDebug""
	start /wait cmd.exe /k "windows_build_each.bat "libjpeg-turbo-src-64-VS2015" "Visual Studio 14 2015 Win64" "%var%" "/p:OutDir=../%dstnuget%/lib/native/v140/windesktop/msvcstl/x64/Release/md/ /p:Configuration=Release /p:Platform=x64 /p:PlatformToolset=v140 /p:DebugSymbols=false /p:DebugType=none" "MultiThreadedDLL""
	start /wait cmd.exe /k "windows_build_each.bat "libjpeg-turbo-src-64-VS2015" "Visual Studio 14 2015 Win64" "%var%" "/p:OutDir=../%dstnuget%/lib/native/v140/windesktop/msvcstl/x64/Release/mt/ /p:Configuration=Release /p:Platform=x64 /p:PlatformToolset=v140 /p:DebugSymbols=false /p:DebugType=none" "MultiThreaded""
	call rd /s /q "libjpeg-turbo-src-32-VS2015"
	call rd /s /q "libjpeg-turbo-src-64-VS2015"
)
exit
