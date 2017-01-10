##Lists the current settings for Scratch Partition Location

$vmhosts = Get-Cluster HQ-SDLC | Get-VMHost
$scratch = “ScratchConfig.ConfiguredScratchLocation”

Foreach ($esx in $vmhosts) {Get-AdvancedSetting -Entity $esx -Name $scratch | Select @{Name="ESXi Host";Expression={$esx.Name}}, Value} 


#This command lists the path for the selected datastores

Get-View -ViewType Datastore -filter @{'name'='sdlc'} | Select -ExpandProperty Info | Select Name, URL | Ft


##This is the command to update the location of the Scratch Partition. Once updated the ESXi host will have to be rebooted for the changes to take effect.

Get-AdvancedSetting -Entity hqsdlcesxi04* -Name $scratch | Set-AdvancedSetting -Value /vmfs/volumes/57755694-749749f8-acbd-0025b5a31000
