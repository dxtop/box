@echo off

set /p jarName=请输入JAR文件名（如loamen_spider，不需要.jar）: 
set jarPath="%~dp0\%jarName%.jar"
set md5Path="%jarPath%.md5"

if exist %jarPath% (
    certUtil -hashfile "%jarPath%" MD5 | find /i /v "md5" | find /i /v "certutil" > "%md5Path%"
    echo MD5哈希值已生成并保存到 %md5Path%
) else (
    echo 文件 %jarPath% 不存在。
)

pause