@echo off
SETLOCAL EnableDelayedExpansion

REM Store the incoming arguments (selected file paths) into a variable
set "filePaths=%*"

REM Initialize an empty string to store file names
set "fileNames="

REM Iterate through the incoming file paths, extract the file names, and append them to the fileNames variable with a new line separator
for %%i in (%filePaths%) do (
    set "filePath=%%i"
    for %%F in ("!filePath!") do set "fileName=%%~nxF"
    set /p "fileNames=!fileNames!!fileName! "
)

REM Write the file names to the clipboard with new line separators
echo.!fileNames!| clip

echo Selected file names have been copied to the clipboard.

exit
