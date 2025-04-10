#
Get-ExecutionPolicy
Get-ExecutionPolicy -List
pause
if(($(Get-ExecutionPolicy) -eq "Restricted") -or ($(Get-ExecutionPolicy) -eq "AllSigned")) {
        Start-Process powershell -ArgumentList '-ExecutionPolicy Bypass -Command "irm https://raw.githubusercontent.com/Set0z/Buran_Menu/refs/heads/main/modules/script.ps1 | iex"' -Verb RunAs
        exit
}
pause