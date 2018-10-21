# ZodiacService

This is the Zodiac Service used in the "Dyalog in the Cloud" workshop at
at the Dyalog'18 User Meeting, on Thursday November 1st, 2018. Until that date, the contents of this repository are very much work in progress.

The Zodiac Service is designed to work under Docker and Kubernetes.

The folder *win* contains Powershell scripts that can be used to launch and test the service. Note that you will need to "Set-ExecutionPolicy RemoteSigned" in order to be able to run PowerShell scripts.

*nix* contains the corresponding bash scripts.

### Testing

Clone the repository. First, run the "start-data" script, then the "start-fe" script, each in a separate shell session. Finally, run the test command, including a parameter containing a date:

```
PS C:\Users\mkrom> c:\devt\zodiacservice\win\test '[11,1]'

StatusCode        : 200
StatusDescription : OK
Content           : "Scorpio [container=5622ab44d6d4]"
RawContent        : HTTP/1.1 200 OK
                    Content-Length: 34
                    Content-Type: application/json; charset=utf-8

                    "Scorpio [container=5622ab44d6d4]"
Forms             : {}
Headers           : {[Content-Length, 34], [Content-Type, application/json; charset=utf-8]}
Images            : {}
InputFields       : {}
Links             : {}
ParsedHtml        : mshtml.HTMLDocumentClass
RawContentLength  : 34
```
