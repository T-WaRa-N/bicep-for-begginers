// az deployment group create --name main --resource-group <group-name> --template-file main.bicep
// az bicep install && az bicep upgrade
// BicepSubscriptionLab  AzureCloud   8eb544fe-b3c3-4d13-85b0-8218b8c88249  1506c8f6-5ecb-4a58-b4f4-f222f36cb75f  Enabled  True
// az account alias create --name "MyNewSubscriptionName" --billing-scope "Your-Billing-Account-Scope-ID"
// az billing account list --output table

resource storageAccount 'Microsoft.Storage/storageAccounts@2023-05-01' = {
  name: 'toystorageaccount1'
  location: 'eastus'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties:{
    accessTier: 'Hot'
  }
}

// resource appServicePlan 'Microsoft.Web/serverfarms@2024-04-01' = {
//   name: 'toy-product-launch-plan-starter-one'
//   location: 'eastus'
//   sku: {
//     name: 'B1'
//   }
// }

// resource appServiceApp 'Microsoft.Web/sites@2024-04-01' = {
//   name: 'toy-product-launch-one'
//   location: 'eastus'
//   properties: {
//     serverFarmId: appServicePlan.id
//     httpsOnly: true
//   }
// }

