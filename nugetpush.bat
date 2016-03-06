copy Libjpeg-Turbo.targets Libjpeg-Turbo\build\native\
copy LLibjpeg-Turbo.nuspec Libjpeg-Turbo\
nuget pack Libjpeg-Turbo\Libjpeg-Turbo.nuspec
for /r . %%g in (*.nupkg) do nuget push %%g 