set SEVENZIP="C:\Program Files\7-Zip\7z.exe"
set foundfile=""
SET var=%cd%

for %%g in (*.gz) do set foundfile=%%~ng
set filename=%foundfile:.tar=%

start /wait cmd.exe /k "cleanbuild.bat %filename%"

call %SEVENZIP% e "%var%/%foundfile%.gz" -aoa
call %SEVENZIP% x "%var%/%foundfile%" -aoa

call xcopy "%var%\%filename%\turbojpeg.h" Libjpeg-Turbo\build\native\include\ /H /K /y
start cmd.exe /k "android_build.bat"

if exist "C:/Program Files (x86)/MSBuild/12.0/Bin/msbuild.exe" (
	call xcopy "%var%\%filename%" "%var%\libjpeg-turbo-src-64-VS2013\" /E /H /K /y
	call xcopy "%var%\%filename%" "%var%\libjpeg-turbo-src-32-VS2013\" /E /H /K /y
	call copy nasm.exe libjpeg-turbo-src-32-VS2013\simd\
	call copy nasm.exe libjpeg-turbo-src-64-VS2013\simd\
	start /wait cmd.exe /k "windows_build_each.bat "libjpeg-turbo-src-32-VS2013" "Visual Studio 12 2013" "%var%" "/p:OutDir=../Libjpeg-Turbo/lib/native/v120/windesktop/msvcstl/Win32/Debug/md/ /p:Configuration=Debug /p:Platform=Win32 /p:PlatformToolset=v120 /p:RuntimeLibrary=MultiThreadedDebugDLL /p:DebugSymbols=true /p:DebugType=pdbonly""
	start /wait cmd.exe /k "windows_build_each.bat "libjpeg-turbo-src-32-VS2013" "Visual Studio 12 2013" "%var%" "/p:OutDir=../Libjpeg-Turbo/lib/native/v120/windesktop/msvcstl/Win32/Debug/mt/ /p:Configuration=Debug /p:Platform=Win32 /p:PlatformToolset=v120 /p:RuntimeLibrary=MultiThreadedDebug /p:DebugSymbols=true /p:DebugType=pdbonly""
	start /wait cmd.exe /k "windows_build_each.bat "libjpeg-turbo-src-32-VS2013" "Visual Studio 12 2013" "%var%" "/p:OutDir=../Libjpeg-Turbo/lib/native/v120/windesktop/msvcstl/Win32/Release/md/ /p:Configuration=Release /p:Platform=Win32 /p:PlatformToolset=v120 /p:RuntimeLibrary=MultiThreadedDLL /p:DebugSymbols=false /p:DebugType=none""
	start /wait cmd.exe /k "windows_build_each.bat "libjpeg-turbo-src-32-VS2013" "Visual Studio 12 2013" "%var%" "/p:OutDir=../Libjpeg-Turbo/lib/native/v120/windesktop/msvcstl/Win32/Release/mt/ /p:Configuration=Release /p:Platform=Win32 /p:PlatformToolset=v120 /p:RuntimeLibrary=MultiThreaded /p:DebugSymbols=false /p:DebugType=none""
	start /wait cmd.exe /k "windows_build_each.bat "libjpeg-turbo-src-64-VS2013" "Visual Studio 12 2013 Win64" "%var%" "/p:OutDir=../Libjpeg-Turbo/lib/native/v120/windesktop/msvcstl/x64/Debug/md/ /p:Configuration=Debug /p:Platform=x64 /p:PlatformToolset=v120 /p:RuntimeLibrary=MultiThreadedDebugDLL /p:DebugSymbols=true /p:DebugType=pdbonly""
	start /wait cmd.exe /k "windows_build_each.bat "libjpeg-turbo-src-64-VS2013" "Visual Studio 12 2013 Win64" "%var%" "/p:OutDir=../Libjpeg-Turbo/lib/native/v120/windesktop/msvcstl/x64/Debug/mt/ /p:Configuration=Debug /p:Platform=x64 /p:PlatformToolset=v120 /p:RuntimeLibrary=MultiThreadedDebug /p:DebugSymbols=true /p:DebugType=pdbonly""
	start /wait cmd.exe /k "windows_build_each.bat "libjpeg-turbo-src-64-VS2013" "Visual Studio 12 2013 Win64" "%var%" "/p:OutDir=../Libjpeg-Turbo/lib/native/v120/windesktop/msvcstl/x64/Release/md/ /p:Configuration=Release /p:Platform=x64 /p:PlatformToolset=v120 /p:RuntimeLibrary=MultiThreadedDLL /p:DebugSymbols=false /p:DebugType=none""
	start /wait cmd.exe /k "windows_build_each.bat "libjpeg-turbo-src-64-VS2013" "Visual Studio 12 2013 Win64" "%var%" "/p:OutDir=../Libjpeg-Turbo/lib/native/v120/windesktop/msvcstl/x64/Release/mt/ /p:Configuration=Release /p:Platform=x64 /p:PlatformToolset=v120 /p:RuntimeLibrary=MultiThreaded /p:DebugSymbols=false /p:DebugType=none""
)
if exist "C:/Program Files (x86)/MSBuild/14.0/Bin/msbuild.exe" (
	call xcopy "%var%\%filename%" "%var%\libjpeg-turbo-src-32-VS2015\" /E /H /K /y
	call xcopy "%var%\%filename%" "%var%\libjpeg-turbo-src-64-VS2015\" /E /H /K /y
	call copy nasm.exe libjpeg-turbo-src-32-VS2015\simd\
	call copy nasm.exe libjpeg-turbo-src-64-VS2015\simd\
	start /wait cmd.exe /k "windows_build_each.bat "libjpeg-turbo-src-32-VS2015" "Visual Studio 14 2015" "%var%" "/p:OutDir=../Libjpeg-Turbo/lib/native/v140/windesktop/msvcstl/Win32/Debug/md/ /p:Configuration=Debug /p:Platform=Win32 /p:PlatformToolset=v140 /p:RuntimeLibrary=MultiThreadedDebugDLL /p:DebugSymbols=true /p:DebugType=pdbonly""
	start /wait cmd.exe /k "windows_build_each.bat "libjpeg-turbo-src-32-VS2015" "Visual Studio 14 2015" "%var%" "/p:OutDir=../Libjpeg-Turbo/lib/native/v140/windesktop/msvcstl/Win32/Debug/mt/ /p:Configuration=Debug /p:Platform=Win32 /p:PlatformToolset=v140 /p:RuntimeLibrary=MultiThreadedDebug /p:DebugSymbols=true /p:DebugType=pdbonly""
	start /wait cmd.exe /k "windows_build_each.bat "libjpeg-turbo-src-32-VS2015" "Visual Studio 14 2015" "%var%" "/p:OutDir=../Libjpeg-Turbo/lib/native/v140/windesktop/msvcstl/Win32/Release/md/ /p:Configuration=Release /p:Platform=Win32 /p:PlatformToolset=v140 /p:RuntimeLibrary=MultiThreadedDLL /p:DebugSymbols=false /p:DebugType=none""
	start /wait cmd.exe /k "windows_build_each.bat "libjpeg-turbo-src-32-VS2015" "Visual Studio 14 2015" "%var%" "/p:OutDir=../Libjpeg-Turbo/lib/native/v140/windesktop/msvcstl/Win32/Release/mt/ /p:Configuration=Release /p:Platform=Win32 /p:PlatformToolset=v140 /p:RuntimeLibrary=MultiThreaded /p:DebugSymbols=false /p:DebugType=none""
	start /wait cmd.exe /k "windows_build_each.bat "libjpeg-turbo-src-64-VS2015" "Visual Studio 14 2015 Win64" "%var%" "/p:OutDir=../Libjpeg-Turbo/lib/native/v140/windesktop/msvcstl/x64/Debug/md/ /p:Configuration=Debug /p:Platform=x64 /p:PlatformToolset=v140 /p:RuntimeLibrary=MultiThreadedDebugDLL /p:DebugSymbols=true /p:DebugType=pdbonly""
	start /wait cmd.exe /k "windows_build_each.bat "libjpeg-turbo-src-64-VS2015" "Visual Studio 14 2015 Win64" "%var%" "/p:OutDir=../Libjpeg-Turbo/lib/native/v140/windesktop/msvcstl/x64/Debug/mt/ /p:Configuration=Debug /p:Platform=x64 /p:PlatformToolset=v140 /p:RuntimeLibrary=MultiThreadedDebug /p:DebugSymbols=true /p:DebugType=pdbonly""
	start /wait cmd.exe /k "windows_build_each.bat "libjpeg-turbo-src-64-VS2015" "Visual Studio 14 2015 Win64" "%var%" "/p:OutDir=../Libjpeg-Turbo/lib/native/v140/windesktop/msvcstl/x64/Release/md/ /p:Configuration=Release /p:Platform=x64 /p:PlatformToolset=v140 /p:RuntimeLibrary=MultiThreadedDLL /p:DebugSymbols=false /p:DebugType=none""
	start /wait cmd.exe /k "windows_build_each.bat "libjpeg-turbo-src-64-VS2015" "Visual Studio 14 2015 Win64" "%var%" "/p:OutDir=../Libjpeg-Turbo/lib/native/v140/windesktop/msvcstl/x64/Release/mt/ /p:Configuration=Release /p:Platform=x64 /p:PlatformToolset=v140 /p:RuntimeLibrary=MultiThreaded /p:DebugSymbols=false /p:DebugType=none""
)
start /wait cmd.exe /k "cleanbuild.bat %filename%"	