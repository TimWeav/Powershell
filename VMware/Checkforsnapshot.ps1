Write-Host “Connecting to vCenter” -foregroundcolor “red”

Connect-VIServer [VC Name] -wa 0

get-vm | get-snapshot | format-list vm,name,Created,SizeGB | Out-File [path to output file]

Write-Host “Closing vCenter connection” -foregroundcolor “red”
Disconnect-VIServer -Confirm:$false
