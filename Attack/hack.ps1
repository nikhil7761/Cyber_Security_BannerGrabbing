# Path to the target PowerShell script
$scriptPath = "C:\Users\sai\Desktop\Attack\Attack.ps1"

# Loop to open the script 10 times
for ($i = 1; $i -le 100; $i++) {
    Write-Host "Opening script: Attempt $i"
    Start-Process "powershell" -ArgumentList "-File", $scriptPath
}
