@echo off
chcp 65001 >nul
echo 正在启动作业截止日期看板...
echo.
echo 手机访问地址（把下面的 IP 换成你电脑的局域网 IP）:
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /c:"IPv4"') do echo   http://%%a:8000
echo.
echo 按 Ctrl + C 停止服务
python -m http.server 8000 --bind 0.0.0.0
