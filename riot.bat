@echo off
net session >nul 2>&1
if %errorLevel% == 0 (
	title Valorant Cleaner Mhatt.zzz#0001
	taskkill /f /im ClientRiot.exe > nul
	cls
	echo.
	echo  -- Clearing MainDisk --
	timeout /t 2 >nul
	del /s /f /a:h /a:a /q "C:\Windows\win.ini"
	del /s /f /a:h /a:a /q "C:\Riot Games"
	del /s /f /a:h /a:a /q "C:\Users\%username%\AppData\Local\Microsoft\Vault\UserProfileRoaming\Latest.dat"
	del /s /f /a:h /a:a /q "C:\Users\%username%\AppData\Local\AC\INetCookies\ESE\container.dat"
	del /s /f /a:h /a:a /q "C:\Users\%username%\AppData\Local\Microsoft\OneDrive\logs\Common\DeviceHealthSummaryConfiguration.ini"
	del /s /f /a:h /a:a /q "C:\ProgramData\Microsoft\Windows\DeviceMetadataCache\dmrc.idx"
	del /s /f /a:h /a:a /q "C:\Users\%username%\ntuser.ini"
	del /s /f /a:h /a:a /q "C:\Users\%username%\AppData\Local\Microsoft\Windows\INetCache\IE\container.dat"
	del /s /f /a:h /a:a /q "C:\ProgramData\Riot Games"
	del /s /f /a:h /a:a /q "C:\System Volume Information\tracking.log"
	del /s /f /a:h /a:a /q "C:\Users\Matty\AppData\Local\Riot Games"
	del /s /f /a:h /a:a /q "C:\Program Files\Riot Vanguard"
	del /s /f /a:h /a:a /q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Riot Games"
	cls
	echo.
	echo  -- System Clean --
	echo.
	echo.
	echo  Closing in 5 Seconds...
	timeout /t 5 >nul
	exit
) else (
    echo.
    echo.
    echo  No admin permissions.
    pause>nul
)