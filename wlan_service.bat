:loop
sc query "WlanSvc" | find /i "RUNNING"
if not ERRORLEVEL 1 (
    echo WlanSvc is running. Wait 60s
) else (
    echo WlanSvc is not running. Start
	net start "WlanSvc"
)
timeout /t 60

goto loop

