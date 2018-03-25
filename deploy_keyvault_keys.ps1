$vaultname = "wenlabsccmvault"
$password = "rXX%4n!]P&;!sUM4"

Login-AzureRmAccount

Select-AzureRmSubscription -SubscriptionName 03ebde09-fde9-4daa-87a6-d5666f2ad449

New-AzureRmResourceGroup -Name WenLabVault -Location "East US"
  
$secretvalue = ConvertTo-SecureString $password -AsPlainText -Force
Set-AzureKeyVaultSecret -VaultName $vaultname -Name "VMAdminPassword" -SecretValue $secretvalue

