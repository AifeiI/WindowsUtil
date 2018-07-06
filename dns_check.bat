@echo off

set domain=%~1

if "%domain%"=="" set /p domain='请输入域名'

:: 114 DNS
echo ----------------- 114 DNS -----------------
nslookup -qt=a %domain% 114.114.114.114
nslookup -qt=a %domain% 114.114.115.115

:: 阿里云
echo ----------------- 阿里云 DNS -----------------
nslookup -qt=a %domain% 223.5.5.5
nslookup -qt=a %domain% 223.6.6.6

:: 腾讯云
echo ----------------- 腾讯云 DNS -----------------
nslookup -qt=a %domain% 119.29.29.29

:: 广东电信 DNS
echo ----------------- 广东电信 DNS -----------------
nslookup -qt=a %domain% 202.96.128.86
nslookup -qt=a %domain% 202.96.128.166
nslookup -qt=a %domain% 202.96.134.33
nslookup -qt=a %domain% 202.96.128.68

echo ----------------- 中科大 DNS -----------------
nslookup -qt=a %domain% 202.38.64.1
nslookup -qt=a %domain% 202.112.20.131

:: Google DNS
echo ----------------- Google DNS -----------------
nslookup -qt=a %domain% 8.8.8.8
nslookup -qt=a %domain% 8.8.4.4

:: IBM
echo ----------------- IBM DNS -----------------
nslookup -qt=a %domain% 9.9.9.9

echo ----------------- CloudFlare DNS -----------------
nslookup -qt=a %domain% 1.1.1.1

pause
