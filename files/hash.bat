@echo off
if exist hashes.txt (
    del hashes.txt
)

for /r %%i in (*) do (
    echo Generating hash for file: %%i 
    Powershell "Get-FileHash %%i -Algorithm SHA1 | Format-List" >> hashes.txt 
)