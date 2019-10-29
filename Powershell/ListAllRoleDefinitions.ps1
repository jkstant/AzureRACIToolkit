
Param(
    [string] $Filepath = "C:\temp\blueprint_reader.csv"
    )

# Export All Roles and their definitions 

Get-AzRoleDefinition | foreach-object { 
  $Name = $_.Name
  
   Write-Verbose -Message "Changing to Role $Name" -Verbose

 
 Get-AzRoleDefinition -Name $Name | Select-Object Name,Description,@{n='Actions';e={$_.Actions}}, @{n='NotActions';e={$_.NotActions}}, @{n='DataActions';e={$_.DataActions}}, @{n='NotDataActions';e={$_.NotDataActions}} -OutVariable ra 
 
 

  Write-Verbose -Message "Actions: $ra" -Verbose
   

    $ra | Export-Csv -Append -Path $Filepath -Force -NoTypeInformation
 
 }




