# PowerShell script to start zodiac-fe (Front End) service
# Exposes JSONServer port 8080 and RIDE port to 4502

$rootfolder=Split-Path -parent (Split-Path -parent $MyInvocation.MyCommand.Path)
docker run -it --rm -p 8080:8080 -p 4502:4502 -v "$rootfolder/zodiac-fe:/code" dyalog/jsonserver:dbg