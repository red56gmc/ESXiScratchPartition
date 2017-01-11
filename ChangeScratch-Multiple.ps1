#This is the command to update the location of the Scratch Partition. Once updated the ESXi host will have to be rebooted for the changes to take effect.

Get-AdvancedSetting -Entity hqsdlcesxi04* -Name $scratch | Set-AdvancedSetting -Value /vmfs/volumes/57755694-749749f8-acbd-0025b5a31000
