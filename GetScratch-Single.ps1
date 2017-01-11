##Lists the current settings for Scratch Partition Location for a single host

Get-VMHost lhqsdlcesxi04* | Get-AdvancedSetting -Name ScratchConfig.ConfiguredScratchLocation | Select Name,Value
