@ECHO OFF
REM https://msdn.microsoft.com/zh-cn/library/windows/desktop/bb736357(v=vs.85).aspx

SET RUNCMD=python "%~dp0IpChange.py" >> "%~dp0tasks.out"

SET RUN_USER=%USERNAME%
WHOAMI /GROUPS | FIND "12288" > NUL && SET RUN_USER="SYSTEM"

ECHO Create task run as %RUN_USER%
schtasks /Create /SC MINUTE /MO 10 /TR "%RUNCMD%" /TN "IpChange" /F /RU "%RUN_USER%"

PAUSE
