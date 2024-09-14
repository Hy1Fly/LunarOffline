::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHreyHcjLQlHcIFczFeeA6YX/Ofr0+uEoUIIWvYsNoXI1bru
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQIyMVtNSmQ=
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATEzWRQ
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFJ6KvDimOXixEroM1MTu4euVjUsbWOsxfbD136OxFrJdvnndU6oa13ZWiMocCQl9cBWiYAp6pWBJ+GGdMqc=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
setlocal enabledelayedexpansion
title LunarUserOffline - by yf
:: 提示输入游戏 ID
set /p "gameID=请输入游戏 ID: "
:: 提示输入皮肤 UUID
echo 皮肤UUID获取地址namemc.com
start https://namemc.com/
set /p "skinUUID=请输入皮肤 UUID: "
:: 读取 accounts.json 并替换内容
cls
(for /f "delims=" %%i in (accounts.json) do (
    set "line=%%i"
    set "line=!line:gameid=%gameID%!"
    set "line=!line:skinuuid=%skinuuid%!"
    echo.!line!
)) > temp.txt
cls
:: 用临时文件覆盖原文件
move /y temp.txt accounts.json
setlocal enabledelayedexpansion
set /p "user=请输入当前用户名: "
set "destination=C:\Users\%user%\.lunarclient\settings\game"
cls
if not exist "%destination%" (
    mkdir "%destination%"
)
cls
copy accounts.json "%destination%\accounts.json"
echo 创建完成
pause