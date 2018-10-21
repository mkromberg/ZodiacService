# Test that the ZodiacService is available on port 8080

param([string]$date)
Invoke-WebRequest -uri 'http://127.0.0.1:8080/GetSign' -method 'post' -contenttype 'application/json' -body $date