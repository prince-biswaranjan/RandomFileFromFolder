$FolderPath = "C:\Users\pbiswaranjan\Downloads\*";
$Files = Get-ChildItem -Path $FolderPath -Recurse -File;
$RandomFile = $Files | Get-Random -Count 1;

Write-Host($RandomFile.FullName);
explorer.exe /select,$RandomFile.FullName;
