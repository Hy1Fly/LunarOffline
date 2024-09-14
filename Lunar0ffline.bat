@echo off
title  
mode 100, 30
:menu
cls
echo.
echo.
echo                                    L u n a r  O f f l i n e
echo.
echo.
echo                                        [1]离线启动 LUNAR
echo.
echo.
echo                                      [2]离线启动本地 LUNAR
echo.
echo.
echo                                      [3]创建 LUNAR 离线账户
echo.
echo.
set /p choice=- 

if "%choice%"=="1" (
    cls
    setlocal enabledelayedexpansion
    echo LunarClient 已启动
    echo 启动参数已保存在 LCL.txt
    for /f "delims=" %%a in (LCL.txt) do (
        set command=%%a
        echo Executing:!command!
       !command!
    )
    pause
    goto menu
) else if "%choice%"=="2" (
    @echo off
    mode 100, 30
    title LOCAL OFFLINE LUNAR LAU - by yf
    set /p username=请输入你的用户名：
    if exist "%cd%\Jre" (
    echo 按下A开始复制Jre并启动
        xcopy /s /e "%cd%\Jre" "C:\Users\%username%\.lunarclient\offline\multiver\Jre"
    ) else (
        echo 当前目录下没有 Jre 文件夹。
    )
    if exist "%cd%\LCL.txt" (
        copy "%cd%\LCL.txt" "C:\Users\%username%\.lunarclient\offline\multiver\"
    ) else (
        echo 当前目录下没有 LCL.txt 文件。
    )
    pause
    cd /d "C:\Users\%username%\.lunarclient\offline\multiver"
    setlocal enabledelayedexpansion
    echo LunarClient 已启动
    echo 启动参数已保存在 LCL.txt
    for /f "delims=" %%a in (LCL.txt) do (
        set command=%%a
        echo Executing:!command!
       !command!
    )
    pause
    goto menu
) else if "%choice%"=="3" (
    start "" "%cd%\YF\User.exe"
    pause
    goto menu
) else (
    echo 无效的选择，请重新输入。
    pause
    goto menu
)