Param(
    [string] $Role = "Delete Me"
    )

    #First, let's iterate thru any assignments to this role and delete them

 Get-AzRoleAssignment -RoleDefinitionName $Role | foreach-object { 
 
   $Name = $_.RoleDefinitionName
   $User = $_.DisplayName
   $Id = $_.ObjectId
  
   
   Write-Verbose -Message "Deleting assignments for $Name..." -Verbose  
   Remove-AzRoleAssignment -ObjectId $Id  -RoleDefinitionName $Name
 }
 Write-Verbose -Message "Deleting role..." -Verbose
 #Delete role
 Remove-AzRoleDefinition -Name $Name
 Write-Verbose -Message "Done." -Verbose



