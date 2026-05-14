param location string = 'centralindia'
param storageAccountName string
param appServiceName string

module storageModule './modules/storage.bicep' = {
  name: 'storageDeploy'
  params: {
    storageAccountName: storageAccountName
    location: location
  }
}

module appModule './modules/appservice.bicep' = {
  name: 'appDeploy'
  params: {
    appServiceName: appServiceName
    location: location
  }
}
