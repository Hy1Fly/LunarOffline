@echo off
mode 100, 30
title LOCAL OFFLINE LUNAR LAU - by yf
set /p username=����������û�����
    xcopy /s /e "%cd%\Jre" "C:\Users\%username%\.lunarclient\offline\multiver\Jre"
    copy "%cd%\LCL.txt" "C:\Users\%username%\.lunarclient\offline\multiver\"
    pause
    cd /d "C:\Users\%username%\.lunarclient\offline\multiver"
    setlocal enabledelayedexpansion
    echo LunarClient ������
    echo ���������ѱ����� LCL.txt
    for /f "delims=" %%a in (LCL.txt) do (
        set command=%%a
        echo Executing:!command!
      !command!
    )
    pause
) else (
    echo ������û�������ȷ��
)