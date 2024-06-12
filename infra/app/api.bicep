param name string
param location string = resourceGroup().location
param tags object = {}

param appCommandLine string = 'gunicorn --workers 1 --timeout 60 --access-logfile "-" --error-logfile "-" --bind=0.0.0.0:8000 -k uvicorn.workers.UvicornWorker main:app'
param appServicePlanId string
@secure()
param appSettings object = {}
param serviceName string = 'api'

param cosmosDbAccountName string

module api '../core/host/appservice.bicep' = {
  name: 'AppService-api'
  params: {
    name: name
    location: location
    tags: union(tags, { 'azd-service-name': serviceName })
    appCommandLine: appCommandLine
    appServicePlanId: appServicePlanId
    cosmosDbAccountName: cosmosDbAccountName
    appSettings: appSettings
    runtimeName: 'python'
    runtimeVersion: '3.11'
    scmDoBuildDuringDeployment: true
  }
}