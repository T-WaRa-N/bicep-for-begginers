
// az account set --subscription <subscription-id>
// az deployment group create --name main --resource-group <group-name> --template-file main.bicep

resource storageAccount 'Microsoft.Storage/storageAccounts@2023-05-01' = {
  name: 'mytoylaunchone'
  location: 'eastus'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties:{
    accessTier: 'Hot'
  }
}

resource appServicePlan 'Microsoft.Web/serverfarms@2024-04-01' = {
  name: 'toy-product-launch-plan-starter-one'
  location: 'eastus'
  sku: {
    name: 'B1'
  }
}

resource appServiceApp 'Microsoft.Web/sites@2024-04-01' = {
  name: 'toy-product-launch-one'
  location: 'eastus'
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
  }
}

