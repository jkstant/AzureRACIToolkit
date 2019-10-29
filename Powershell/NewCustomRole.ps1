

# Create new custom role using predefined .JSON role definition file


Param(
    #path to our new role definition file in JSON
    [string] $Filepath = "C:\temp\myCustomRole.json"
    )

Write-Verbose -Message "Creating your new role..." -Verbose  
       
New-AzRoleDefinition -InputFile $Filepath




