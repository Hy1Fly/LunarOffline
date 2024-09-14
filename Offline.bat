@echo off
mode 100, 30
title LOCAL OFFLINE LUNAR LAU - by yf
set /p username=请输入你的用户名：
    xcopy /s /e "%cd%\Jre" "C:\Users\%username%\.lunarclient\offline\multiver\Jre"
    copy "%cd%\LCL.txt" "C:\Users\%username%\.lunarclient\offline\multiver\"
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
) else (
    echo 输入的用户名不正确。
)