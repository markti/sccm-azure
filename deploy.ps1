$envName = "WenSccmDevC"

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
    -TemplateFile .\azuredeploy.json `
    -TemplateParameterFile .\azuredeploy.parameters.json `
    -envName $envName

