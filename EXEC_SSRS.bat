@echo off 
::Script Variables 
SET LOGFILE=%~dp0_Log_%now%.txt
SET REPORTSERVER=http://ec2amaz-ufdc2a1/ReportServer_SKC
SET RS="RS.EXE" 
SET TIMEOUT=60

::Clear Log file
IF EXIST %logfile% DEL %logfile%
::Run Scripts
 %rs% -i %~dp0SSRSDeploy.vbs -s "%REPORTSERVER%"
ECHO Finished Load at TE% %TIME% >>%LOGFILE%
ECHO. >>%LOGFILE%
PAUSE