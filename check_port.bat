::Date:2022-06-24
::Author:Created by b
::Version:1.0
::Describe:Windows Batch check whether ports are available

@echo off
set ip_txt="%~dp0ip.txt"
set log_txt="%~dp0log.txt"
chcp 65001

echo 检测结果为：> %log_txt%

for /f  "tokens=1-2 delims= " %%a in ('type %ip_txt%') do tcping -n 2 -w 0.5 %%a %%b>nul&&echo %%a %%b  通 >> %log_txt%  || echo %%a %%b 不通  >> %log_txt%

pause
