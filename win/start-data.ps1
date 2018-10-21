# PowerShell script to start zodiac-data service
# Maps JSONServer port to 8081 and RIDE port to 4503

$rootfolder=Split-Path -parent (Split-Path -parent $MyInvocation.MyCommand.Path)
docker run -it --rm -p 8081:8080 -p 4503:4502 -v "$rootfolder/zodiac-data:/code" dyalog/jsonserver:dbg