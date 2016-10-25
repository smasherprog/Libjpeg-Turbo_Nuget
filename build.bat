
SET var=%cd%
set dstnuget=libjpeg_turbo_nuget
set msbuild="C:/Program Files (x86)/MSBuild/14.0/Bin/msbuild.exe"

call rmdir Libjpeg-turbo-VS /s /q
call git clone https://github.com/smasherprog/Libjpeg-turbo-VS/
cd Libjpeg-turbo-VS
call git submodule update --init --recursive

mkdir ..\%dstnuget%\build\native\include
copy jconfig.h ..\%dstnuget%\build\native\include
copy jconfigint.h ..\%dstnuget%\build\native\include
copy libjpeg-turbo\turbojpeg.h ..\%dstnuget%\build\native\include

call %msbuild% libjpeg-turbo-VS.sln /t:libjpeg-turbo-win32 /p:OutDir=../%dstnuget%/lib/native/v120/windesktop/msvcstl/Win32/Debug/md/ /p:Platform=x86 /p:PlatformToolset=v120 /p:Configuration=Debug_shared /p:RuntimeLibrary=MultiThreadedDebugDLL /p:DebugSymbols=true /p:DebugType=pdbonly
call %msbuild% libjpeg-turbo-VS.sln /t:libjpeg-turbo-win32 /p:OutDir=../%dstnuget%/lib/native/v120/windesktop/msvcstl/Win32/Debug/mt/ /p:Platform=x86 /p:PlatformToolset=v120 /p:Configuration=Debug_static /p:RuntimeLibrary=MultiThreadedDebug /p:DebugSymbols=true /p:DebugType=pdbonly
call %msbuild% libjpeg-turbo-VS.sln /t:libjpeg-turbo-win32 /p:OutDir=../%dstnuget%/lib/native/v120/windesktop/msvcstl/Win32/Release/md/ /p:Platform=x86 /p:PlatformToolset=v120 /p:Configuration=Release_shared /p:RuntimeLibrary=MultiThreadedDLL /p:DebugSymbols=false /p:DebugType=none
call %msbuild% libjpeg-turbo-VS.sln /t:libjpeg-turbo-win32 /p:OutDir=../%dstnuget%/lib/native/v120/windesktop/msvcstl/Win32/Release/mt/ /p:Platform=x86 /p:PlatformToolset=v120 /p:Configuration=Release_static /p:RuntimeLibrary=MultiThreaded /p:DebugSymbols=false /p:DebugType=none

call %msbuild% libjpeg-turbo-VS.sln /t:libjpeg-turbo-win64 /p:OutDir=../%dstnuget%/lib/native/v120/windesktop/msvcstl/x64/Debug/md/ /p:Platform=x64 /p:PlatformToolset=v120 /p:Configuration=Debug_shared /p:RuntimeLibrary=MultiThreadedDebugDLL /p:DebugSymbols=true /p:DebugType=pdbonly
call %msbuild% libjpeg-turbo-VS.sln /t:libjpeg-turbo-win64 /p:OutDir=../%dstnuget%/lib/native/v120/windesktop/msvcstl/x64/Debug/mt/ /p:Platform=x64 /p:PlatformToolset=v120 /p:Configuration=Debug_static /p:RuntimeLibrary=MultiThreadedDebug /p:DebugSymbols=true /p:DebugType=pdbonly
call %msbuild% libjpeg-turbo-VS.sln /t:libjpeg-turbo-win64 /p:OutDir=../%dstnuget%/lib/native/v120/windesktop/msvcstl/x64/Release/md/ /p:Platform=x64 /p:PlatformToolset=v120 /p:Configuration=Release_shared /p:RuntimeLibrary=MultiThreadedDLL /p:DebugSymbols=false /p:DebugType=none
call %msbuild% libjpeg-turbo-VS.sln /t:libjpeg-turbo-win64 /p:OutDir=../%dstnuget%/lib/native/v120/windesktop/msvcstl/x64/Release/mt/ /p:Platform=x64 /p:PlatformToolset=v120 /p:Configuration=Release_static /p:RuntimeLibrary=MultiThreaded /p:DebugSymbols=false /p:DebugType=none

call %msbuild% libjpeg-turbo-VS.sln /t:libjpeg-turbo-win32 /p:OutDir=../%dstnuget%/lib/native/v140/windesktop/msvcstl/Win32/Debug/md/ /p:Platform=x86 /p:PlatformToolset=v140 /p:Configuration=Debug_shared /p:RuntimeLibrary=MultiThreadedDebugDLL /p:DebugSymbols=true /p:DebugType=pdbonly
call %msbuild% libjpeg-turbo-VS.sln /t:libjpeg-turbo-win32 /p:OutDir=../%dstnuget%/lib/native/v140/windesktop/msvcstl/Win32/Debug/mt/ /p:Platform=x86 /p:PlatformToolset=v140 /p:Configuration=Debug_static /p:RuntimeLibrary=MultiThreadedDebug /p:DebugSymbols=true /p:DebugType=pdbonly
call %msbuild% libjpeg-turbo-VS.sln /t:libjpeg-turbo-win32 /p:OutDir=../%dstnuget%/lib/native/v140/windesktop/msvcstl/Win32/Release/md/ /p:Platform=x86 /p:PlatformToolset=v140 /p:Configuration=Release_shared /p:RuntimeLibrary=MultiThreadedDLL /p:DebugSymbols=false /p:DebugType=none
call %msbuild% libjpeg-turbo-VS.sln /t:libjpeg-turbo-win32 /p:OutDir=../%dstnuget%/lib/native/v140/windesktop/msvcstl/Win32/Release/mt/ /p:Platform=x86 /p:PlatformToolset=v140 /p:Configuration=Release_static /p:RuntimeLibrary=MultiThreaded /p:DebugSymbols=false /p:DebugType=none

call %msbuild% libjpeg-turbo-VS.sln /t:libjpeg-turbo-win64 /p:OutDir=../%dstnuget%/lib/native/v140/windesktop/msvcstl/x64/Debug/md/ /p:Platform=x64 /p:PlatformToolset=v140 /p:Configuration=Debug_shared /p:RuntimeLibrary=MultiThreadedDebugDLL /p:DebugSymbols=true /p:DebugType=pdbonly
call %msbuild% libjpeg-turbo-VS.sln /t:libjpeg-turbo-win64 /p:OutDir=../%dstnuget%/lib/native/v140/windesktop/msvcstl/x64/Debug/mt/ /p:Platform=x64 /p:PlatformToolset=v140 /p:Configuration=Debug_static /p:RuntimeLibrary=MultiThreadedDebug /p:DebugSymbols=true /p:DebugType=pdbonly
call %msbuild% libjpeg-turbo-VS.sln /t:libjpeg-turbo-win64 /p:OutDir=../%dstnuget%/lib/native/v140/windesktop/msvcstl/x64/Release/md/ /p:Platform=x64 /p:PlatformToolset=v140 /p:Configuration=Release_shared /p:RuntimeLibrary=MultiThreadedDLL /p:DebugSymbols=false /p:DebugType=none
call %msbuild% libjpeg-turbo-VS.sln /t:libjpeg-turbo-win64 /p:OutDir=../%dstnuget%/lib/native/v140/windesktop/msvcstl/x64/Release/mt/ /p:Platform=x64 /p:PlatformToolset=v140 /p:Configuration=Release_static /p:RuntimeLibrary=MultiThreaded /p:DebugSymbols=false /p:DebugType=none

call %msbuild% libjpeg-turbo-VS.sln /t:libjpeg-turbo-arm /p:OutDir=../%dstnuget%\lib\native\android\clang\Debug\armeabi\ /p:Platform=ARM /p:PlatformToolset=Clang_3_8 /p:Configuration=Debug_shared
call %msbuild% libjpeg-turbo-VS.sln /t:libjpeg-turbo-arm /p:OutDir=../%dstnuget%\lib\native\android\clang\Debug\armeabi\ /p:Platform=ARM /p:PlatformToolset=Clang_3_8 /p:Configuration=Debug_static
call %msbuild% libjpeg-turbo-VS.sln /t:libjpeg-turbo-arm /p:OutDir=../%dstnuget%\lib\native\android\clang\Release\armeabi\ /p:Platform=ARM /p:PlatformToolset=Clang_3_8 /p:Configuration=Release_shared
call %msbuild% libjpeg-turbo-VS.sln /t:libjpeg-turbo-arm /p:OutDir=../%dstnuget%\lib\native\android\clang\Release\armeabi\ /p:Platform=ARM /p:PlatformToolset=Clang_3_8 /p:Configuration=Release_static

call %msbuild% libjpeg-turbo-VS.sln /t:libjpeg-turbo-arm64 /p:OutDir=../%dstnuget%\lib\native\android\clang\Debug\arm64-v8a\ /p:Platform=ARM64 /p:PlatformToolset=Clang_3_8 /p:Configuration=Debug_shared
call %msbuild% libjpeg-turbo-VS.sln /t:libjpeg-turbo-arm64 /p:OutDir=../%dstnuget%\lib\native\android\clang\Debug\arm64-v8a\ /p:Platform=ARM64 /p:PlatformToolset=Clang_3_8 /p:Configuration=Debug_static
call %msbuild% libjpeg-turbo-VS.sln /t:libjpeg-turbo-arm64 /p:OutDir=../%dstnuget%\lib\native\android\clang\Release\arm64-v8a\ /p:Platform=ARM64 /p:PlatformToolset=Clang_3_8 /p:Configuration=Release_shared
call %msbuild% libjpeg-turbo-VS.sln /t:libjpeg-turbo-arm64 /p:OutDir=../%dstnuget%\lib\native\android\clang\Release\arm64-v8a\ /p:Platform=ARM64 /p:PlatformToolset=Clang_3_8 /p:Configuration=Release_static

call %msbuild% libjpeg-turbo-VS.sln /t:libjpeg-turbo-x86 /p:OutDir=../%dstnuget%\lib\native\android\clang\Debug\x86\ /p:Platform=x86 /p:PlatformToolset=Clang_3_8 /p:Configuration=Debug_shared
call %msbuild% libjpeg-turbo-VS.sln /t:libjpeg-turbo-x86 /p:OutDir=../%dstnuget%\lib\native\android\clang\Debug\x86\ /p:Platform=x86 /p:PlatformToolset=Clang_3_8 /p:Configuration=Debug_static
call %msbuild% libjpeg-turbo-VS.sln /t:libjpeg-turbo-x86 /p:OutDir=../%dstnuget%\lib\native\android\clang\Release\x86\ /p:Platform=x86 /p:PlatformToolset=Clang_3_8 /p:Configuration=Release_shared
call %msbuild% libjpeg-turbo-VS.sln /t:libjpeg-turbo-x86 /p:OutDir=../%dstnuget%\lib\native\android\clang\Release\x86\ /p:Platform=x86 /p:PlatformToolset=Clang_3_8 /p:Configuration=Release_static

call %msbuild% libjpeg-turbo-VS.sln /t:libjpeg-turbo-x64 /p:OutDir=../%dstnuget%\lib\native\android\clang\Debug\x86_64\ /p:Platform=x64 /p:PlatformToolset=Clang_3_8 /p:Configuration=Debug_shared
call %msbuild% libjpeg-turbo-VS.sln /t:libjpeg-turbo-x64 /p:OutDir=../%dstnuget%\lib\native\android\clang\Debug\x86_64\ /p:Platform=x64 /p:PlatformToolset=Clang_3_8 /p:Configuration=Debug_static
call %msbuild% libjpeg-turbo-VS.sln /t:libjpeg-turbo-x64 /p:OutDir=../%dstnuget%\lib\native\android\clang\Release\x86_64\ /p:Platform=x64 /p:PlatformToolset=Clang_3_8 /p:Configuration=Release_shared
call %msbuild% libjpeg-turbo-VS.sln /t:libjpeg-turbo-x64 /p:OutDir=../%dstnuget%\lib\native\android\clang\Release\x86_64\ /p:Platform=x64 /p:PlatformToolset=Clang_3_8 /p:Configuration=Release_static

cd ..

exit