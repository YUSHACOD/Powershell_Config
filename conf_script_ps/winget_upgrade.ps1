$updates = winget upgrade --accept-source-agreements | ForEach-Object { ($_ -split '\s{2,}')[0] }

foreach ($app in $updates) {
    if ($app -and $app -ne "Name") {
        $response = Read-Host "Do you want to update $app? (y/n)"
        if ($response -eq "y") {
            winget upgrade --id $app --accept-source-agreements
        }
    }
}
