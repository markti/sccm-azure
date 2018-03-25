Login-AzureRmAccount

Select-AzureRmSubscription -SubscriptionName 03ebde09-fde9-4daa-87a6-d5666f2ad449

New-AzureRmResourceGroup `
    -Name WenLab `
    -Location "East US"

New-AzureRmResourceGroupDeployment `
    -Name ExampleDeployment `
    -ResourceGroupName ExampleResourceGroup `
    -TemplateFile .\storage.json 
    -TemplateParameterFile .\storage.json 

