Connect-AzAccount

Param(
        [string] $FilePath = "C:\temp\blueprint_reader.csv"
    )

# Export the full role definition of an existing Azure role as a starting point for your custom role

Get-AzProviderOperation |  Export-Csv -Append -Path $FilePath  -NoTypeInformation