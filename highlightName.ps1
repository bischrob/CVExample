$content = Get-content -Path $Args[0];
$newContent = $content -replace '\*', '';
$newContent = $newContent -replace 'Seal,', '**Seal**,';
$newContent | Set-Content -Path $Args[0];

