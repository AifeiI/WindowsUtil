@echo off
set version=dev
:: set version=4.9.x

:: 下载 简体中文翻译

:: -- wordpress 文字
powershell wget -O zh_CN.po https://translate.wordpress.org/projects/wp/%version%/zh-cn/default/export-translations?format=po
powershell wget -O zh_CN.mo https://translate.wordpress.org/projects/wp/%version%/zh-cn/default/export-translations?format=mo
:: -- wordpress admin 文字
powershell wget -O admin-zh_CN.po https://translate.wordpress.org/projects/wp/%version%/admin/zh-cn/default/export-translations?format=po
powershell wget -O admin-zh_CN.mo https://translate.wordpress.org/projects/wp/%version%/admin/zh-cn/default/export-translations?format=mo
:: -- wordpress admin network文字
powershell wget -O admin-network-zh_CN.po https://translate.wordpress.org/projects/wp/dev/admin/network/zh-cn/default/export-translations?format=po
powershell wget -O admin-network-zh_CN.mo https://translate.wordpress.org/projects/wp/dev/admin/network/zh-cn/default/export-translations?format=mo
:: -- wordpress 城市/地区 文字
powershell wget -O continents-cities-zh_CN.po https://translate.wordpress.org/projects/wp/%version%/cc/zh-cn/default/export-translations?format=po
powershell wget -O continents-cities-zh_CN.mo https://translate.wordpress.org/projects/wp/%version%/cc/zh-cn/default/export-translations?format=mo


:: 下载 繁体中文（香港）翻译

:: -- wordpress 文字
powershell wget -O zh_HK.po https://translate.wordpress.org/projects/wp/%version%/zh-hk/default/export-translations?format=po
powershell wget -O zh_HK.mo https://translate.wordpress.org/projects/wp/%version%/zh-hk/default/export-translations?format=mo
:: -- wordpress admin 文字
powershell wget -O admin-zh_HK.po https://translate.wordpress.org/projects/wp/%version%/admin/zh-hk/default/export-translations?format=po
powershell wget -O admin-zh_HK.mo https://translate.wordpress.org/projects/wp/%version%/admin/zh-hk/default/export-translations?format=mo
:: -- wordpress admin network文字
powershell wget -O admin-network-zh_HK.po https://translate.wordpress.org/projects/wp/dev/admin/network/zh-hk/default/export-translations?format=po
powershell wget -O admin-network-zh_HK.mo https://translate.wordpress.org/projects/wp/dev/admin/network/zh-hk/default/export-translations?format=mo
:: -- wordpress 城市/地区 文字
powershell wget -O continents-cities-zh_HK.po https://translate.wordpress.org/projects/wp/%version%/cc/zh-hk/default/export-translations?format=po
powershell wget -O continents-cities-zh_HK.mo https://translate.wordpress.org/projects/wp/%version%/cc/zh-hk/default/export-translations?format=mo

pause