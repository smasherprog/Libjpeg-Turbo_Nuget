call del *.nupkg

set dstnuget=libjpeg_turbo_nuget
copy Libjpeg-Turbo.targets %dstnuget%\build\native\
copy Libjpeg-Turbo.nuspec %dstnuget%\
nuget pack %dstnuget%\Libjpeg-Turbo.nuspec
for /r . %%g in (*.nupkg) do nuget push %%g -Timeout 2147483