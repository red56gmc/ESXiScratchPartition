
##Lists the current settings for Scratch Partition Location for multiple hosts in a cluster

$vmhosts = Get-Cluster HQ-SDLC | Get-VMHost
$scratch = “ScratchConfig.ConfiguredScratchLocation”

Foreach ($esx in $vmhosts) {Get-AdvancedSetting -Entity $esx -Name $scratch | Select @{Name="ESXi Host";Expression={$esx.Name}}, Value} 

