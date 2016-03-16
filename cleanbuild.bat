for /r . %%g in (*.nupkg) do del %%g 	
call del %1.tar
call del pax_global_header
call rd /s /q %1
call rd /s /q "libjpeg-turbo-src-32-VS2013"
call rd /s /q "libjpeg-turbo-src-64-VS2013"
call rd /s /q "libjpeg-turbo-src-32-VS2015"
call rd /s /q "libjpeg-turbo-src-64-VS2015"
exit