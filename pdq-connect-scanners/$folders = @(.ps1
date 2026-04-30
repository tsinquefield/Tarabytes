 $folders = @(
    "C:\CompanyData,"
    "C:\CompanyData\Logs",
    "C:\CompanyData\Scripts",
    "C:\CompanyData\Backups",
    "C:\CompanyData\Temp"
)

foreach ($folder in $folders) {
    if (Test-Path $folder) {
        Write-Host "$folder already exists. Skipping,"
    } else {
        New-Item -Path $folder -ItemType Directory 
        Write-Host "$folder created."
    }
} 
