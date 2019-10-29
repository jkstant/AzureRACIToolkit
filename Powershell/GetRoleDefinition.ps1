Param(
    [string] $RoleName = "Blueprint Reader",
    [string] $Filename = "C:\temp\blueprint_reader.json"
    )

# Export the full role definition of an existing Azure role as a starting point for your custom role
try {

  $Definition =  Get-AzRoleDefinition -Name $RoleName | ConvertTo-Json  | Out-File $filename

   } 
   catch  {
   Write-Output "An issue was encountered please check the spelling of the role."
    
 $_.Exception | Out-File C:\temp\error.log -Append
   
 

  }

  
  