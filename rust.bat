@echo off
REM Set the installation path for RustDesk
set RUSTDESK_PATH="C:\Program Files\RustDesk\"

REM Download RustDesk executable if not already present
if not exist rustdesk.exe (
    echo Downloading RustDesk...
    curl -L "https://github.com/rustdesk/rustdesk/releases/download/1.3.6/rustdesk-1.3.6-x86_64.exe" -o rustdesk.exe
)

REM Install RustDesk silently
echo Installing RustDesk...
rustdesk.exe --silent-install

REM Wait for the installation to complete
timeout /t 20

REM Install RustDesk as a service
cd %RUSTDESK_PATH%
rustdesk.exe --install-service

REM Wait for the service to install
timeout /t 20

REM Start the RustDesk service
net start Rustdesk

REM Wait for the service to start
timeout /t 5

REM Retrieve the current ID and password
for /f "delims=" %%i in ('rustdesk.exe --get-id') do set rustdesk_id=%%i
set rustdesk_pw=Pass*2024 REM Replace with your actual password or logic to retrieve it

REM Display the ID and Password
echo ...............................................
echo RustDesk ID: %rustdesk_id%
echo Password: %rustdesk_pw%
echo ...............................................
