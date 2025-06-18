


$azure_tenant_id = '12444841-81fa-45df-92b6-7b48e7fc0085'
$application_secret = 'ecd8Q~oAE4Gut2eMHtZ3.OkrcOF3_IiL4Fl1NcOf'
$application_id = 'cdc42fab-f19d-4fb6-b58b-644ccda90758'




Function ConnectMGGraph{
    Param (
        [Parameter(Mandatory=$True, Position=1)][string]$azure_tenant_id,
        [Parameter(Mandatory=$True)][string]$application_secret,
        [Parameter(Mandatory=$True)][string]$application_id
    )

    Write-Host "[+] $azure_tenant_id"

    # Get an access token for Graph API
    $headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
    $headers.Add("Content-Type", "application/x-www-form-urlencoded")
    $body = "client_id=$application_id&grant_type=client_credentials&scope=https%3A%2F%2Fgraph.microsoft.com%2F.default&client_secret=$application_secret"
    $response = Invoke-RestMethod "https://login.microsoftonline.com/$azure_tenant_id/oauth2/v2.0/token" -Method 'POST' -Headers $headers -Body $body
    $access_token_reponse = $response | ConvertTo-Json | ConvertFrom-Json | Select-Object access_token
    $access_token = $access_token_reponse.access_token 

    Write-Host $access_token

    $access_token_secure = ConvertTo-SecureString $access_token -AsPlainText -Force

    Connect-MgGraph -AccessToken $access_token_secure

    Write-Host "`n`nConnected to Graph!`n`n"

}

# Connect to Graph
# ConnectMGGraph -azure_tenant_id $azure_tenant_id -application_secret  $application_secret -application_id  $application_id



Connect-ExchangeOnline -CertificateFilePath "C:\Probax2\probaxsaasmodernapponlycertificate.pfx" -CertificatePassword (ConvertTo-SecureString -String "123" -AsPlainText -Force) -AppID "$application_id" -Organization "probaxdemo.onmicrosoft.com"

$emails = Get-User | Select-Object UserPrincipalName

foreach($email in $emails){

    $email

}

    # $access_token_reponse = $response | ConvertTo-Json | ConvertFrom-Json | Select-Object access_token
    # $access_token = $access_token_reponse.access_token 




    # # Get OneDrive Data
    # $headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
    # $headers.Add("Authorization", "Bearer $access_token")
    # $response = Invoke-RestMethod "https://graph.microsoft.com/v1.0/reports/getOneDriveUsageAccountDetail(period='D7')" -Method 'GET' -Headers $headers

    # Write-Host "$response"


# # Object for demonstration
# $NewCSVObject = @{}

# $users = (Get-MgUser).ForEach( {$_.UserPrincipalName} )

# foreach ($user in $users)  
# {  
    
#     $license = (Get-MgUserLicenseDetail -UserId "$user").SkuPartNumber   
#     $NewCSVObject += @{ "$user"= "$license" }
    
#     [PSCustomObject]@{
#         Email = $user
#         License = [string]$license
#     } | Export-Csv -Path licenseoutput.csv -NoTypeInformation -append
    
# }  

# $NewCSVObject




