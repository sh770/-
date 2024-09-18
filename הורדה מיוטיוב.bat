@echo off

:: קרא את תוכן לוח הגזירים ישירות לתוך המשתנה
for /f "delims=" %%i in ('powershell.exe -command "Get-Clipboard"') do set "clipboard=%%i"

echo The clipboard content: %clipboard%

:: כאן תוסיף את הפקודות שברצונך לבצע עם ההדבקה

yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best" --merge-output-format mp4 %clipboard%

::yt-dlp %clipboard%

::pause
