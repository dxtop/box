@echo off

set /p jarName=������JAR�ļ�������loamen_spider������Ҫ.jar��: 
set jarPath="%~dp0\%jarName%.jar"
set md5Path="%jarPath%.md5"

if exist %jarPath% (
    certUtil -hashfile "%jarPath%" MD5 | find /i /v "md5" | find /i /v "certutil" > "%md5Path%"
    echo MD5��ϣֵ�����ɲ����浽 %md5Path%
) else (
    echo �ļ� %jarPath% �����ڡ�
)

pause