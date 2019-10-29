

# Create new custom role using predefined .JSON role definition file


Param(
    #path to our new role definition file in JSON
    [string] $Filepath = "C:\temp\UpdatedCustomRole.json"
    )

Write-Verbose -Message "Updating your existing role..." -Verbose  
       
Set-AzRoleDefinition -InputFile $Filepath







