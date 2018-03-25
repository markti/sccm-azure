$envName = "WenSccmDev"

$rgName = $envName + "Rg"
$deploymentName = $envName + "Dep"


Login-AzureRmAccount

Select-AzureRmSubscription -SubscriptionName 03ebde09-fde9-4daa-87a6-d5666f2ad449

New-AzureRmResourceGroup `
    -Name $rgName `
    -Location "East US"

New-AzureRmResourceGroupDeployment `
    -Name $deploymentName `
    -ResourceGroupName $rgName `
    -TemplateFile .\nestedtemplates\vnet.json `
    -virtualNetworkName 'testVNET' `
    -virtualNetworkAddressRange "10.0.0.0/16" `
    -adSubnetName "adSubnet" `
    -adSubnetRange "10.0.0.0/24" `
    -sccmSubnetName "sccmSubnet" `
    -sccmSubnetRange "10.0.1.0/24"

