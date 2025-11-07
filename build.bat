@echo off

set TARGET_NAME=rapidhash.exe
set SRC_FILENAMES=main.c 
set ROOT_FOLDER=D:\Users\aauhabin1\dev\c\rapidhash-cli\
set CFLAGS=-Wall -Wextra -pedantic -ggdb -fanalyzer -std=c11 -O1 -lws2_32

setlocal enabledelayedexpansion

set SRC_PATHS=

for %%i in (%SRC_FILENAMES%) do (set SRC_PATHS=!SRC_PATHS! %ROOT_FOLDER%src\%%i)

echo %SRC_PATHS%

pushd %ROOT_FOLDER%

if not exist bin mkdir bin

pushd bin

@echo on
gcc  %SRC_PATHS% -o %TARGET_NAME% %CFLAGS%
@echo off

if %ERRORLEVEL% neq 0 exit /b %ERRORLEVEL%

echo build success.

popd
endlocal