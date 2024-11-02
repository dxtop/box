@echo off

set jarPath="%~dp0\custom_spider.jar"
set md5Path="%jarPath%.md5"


if exist %jarPath% (
    certUtil -hashfile "%jarPath%" MD5 | find /i /v "md5" | find /i /v "certutil" > "%md5Path%"
)