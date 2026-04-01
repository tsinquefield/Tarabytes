$disk        = Get-WmiObject Win32_LogicalDisk -Filter "DeviceID='C:'"
$freeGB      = [Math]::Round($disk.FreeSpace / 1GB, 2)
$totalGB     = [Math]::Round($disk.Size     / 1GB, 2)
$percentFree = [Math]::Round(($freeGB / $totalGB) * 100, 2)

[PSCustomObject]@{
    DriveLetter = $disk.DeviceID
    FreeSpaceGB = $freeGB
    TotalGB     = $totalGB
    PercentFree = $percentFree
}
