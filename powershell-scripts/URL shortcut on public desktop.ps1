 $url  = "https://app.pdq.com/bamf"
$path = "$env:PUBLIC\Desktop\OpenURL.lnk"

# Create shortcut
$WshShell = New-Object -ComObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut($path)

$Shortcut.TargetPath = $url
$Shortcut.Save()

# Set ACL so all users can read/execute the shortcut
$acl = Get-Acl $path

$rule = New-Object System.Security.AccessControl.FileSystemAccessRule(
    "Users",
    "ReadAndExecute",
    "Allow"
) 
