@echo off
rem This batch file copies files from one directory to another

rem Set source and destination directories
set source_dir=C:\sourceforbatch
set dest_dir=D:\destforbatch

rem Check if source directory exists
if not exist "%source_dir%" (
    echo Source directory does not exist!
    exit /b
)

rem Check if destination directory exists, if not, create it
if not exist "%dest_dir%" (
    mkdir "%dest_dir%"
)

rem Copy files from source to destination directory
echo Copying files...
xcopy /s /y "%source_dir%\*" "%dest_dir%"

echo Files copied successfully!
