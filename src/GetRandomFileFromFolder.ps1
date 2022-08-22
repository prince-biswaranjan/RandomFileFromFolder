$folderPath = "D:\Downloads\*";
$excludedPaths = @(
    "D:\Downloads\Marriage Pictures\*.*",
    "D:\Downloads\OnePlus 5T Backup\2020-06-16\DCIM\Camera\*",
    "D:\Downloads\Photo prints\Brown",
    "D:\Downloads\pre wedding",
    "D:\Downloads\wedding\*.*"
);

$files = Get-ChildItem -Path $folderPath -Recurse -File -Exclude $excludedPaths;
$randomFile = $files | Get-Random -Count 1;

Write-Host("Total Files: " + $files.Length);
Write-Host($randomFile.FullName);
explorer.exe /select,$randomFile.FullName;
