REM ''' Usage of this file
REM %1 usb drive to be used
REM '''

set usbdrive=%1
%usbdrive%
cd openrtm_tutorial\demo\MotionByVoiceLoggerDemo
echo Moved to DIR=%cd%

for /f "usebackq" %%h in (`hostname`) do set HOSTNAME=%%h

call ..\MotionByVoiceDemo\5_DemoExit.bat

call ..\Apps\rtshell\rtexit 127.0.0.1/%HOSTNAME%.host_cxt/SampleWordLogger0.rtc

taskkill /F /IM SampleWordLogger.exe

