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
echo                                        [1]�������� LUNAR
echo.
echo.
echo                                      [2]������������ LUNAR
echo.
echo.
echo                                      [3]���� LUNAR �����˻�
echo.
echo.
set /p choice=- 

if "%choice%"=="1" (
    cls
    setlocal enabledelayedexpansion
    echo LunarClient ������
    echo ���������ѱ����� LCL.txt
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
    set /p username=����������û�����
    if exist "%cd%\Jre" (
    echo ����A��ʼ����Jre������
        xcopy /s /e "%cd%\Jre" "C:\Users\%username%\.lunarclient\offline\multiver\Jre"
    ) else (
        echo ��ǰĿ¼��û�� Jre �ļ��С�
    )
    if exist "%cd%\LCL.txt" (
        copy "%cd%\LCL.txt" "C:\Users\%username%\.lunarclient\offline\multiver\"
    ) else (
        echo ��ǰĿ¼��û�� LCL.txt �ļ���
    )
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
    goto menu
) else if "%choice%"=="3" (
    start "" "%cd%\YF\User.exe"
    pause
    goto menu
) else (
    echo ��Ч��ѡ�����������롣
    pause
    goto menu
)