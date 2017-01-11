
#This command lists the path for the selected datastores

Get-View -ViewType Datastore -filter @{'name'='sdlc'} | Select -ExpandProperty Info | Select Name, URL | Ft

