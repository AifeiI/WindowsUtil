@echo off

setlocal enabledelayedexpansion

:: 1) Zone Name
:: 2) AAAA Recode Name
set yourDomain=

:: 1) Zone / Instructions / password
:: 1) Zone / Instructions / Benutzername
set token=

set checkIPApi=ip.ddnspod.com

for /f "delims=" %%i in ('curl -s6 !checkIPApi!') do set ipAddress=%%i
echo ipv6: %ipAddress%

set url="https://dynv6.com/api/update?hostname=!yourDomain!&token=!token!&ipv6=!ipAddress!"

for /f "delims=" %%i in ( 'curl -s %url%' ) do set result=%%i
echo Update Result: %result%
