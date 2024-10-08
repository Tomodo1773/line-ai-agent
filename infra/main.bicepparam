using './main.bicep'

param environmentName = readEnvironmentVariable('AZURE_ENV_NAME', 'default-env')

param location = readEnvironmentVariable('AZURE_LOCATION', 'westus')

param appSettings = {
  LANGCHAIN_API_KEY: readEnvironmentVariable('LANGCHAIN_API_KEY', 'default-langchain-key')
  LINE_CHANNEL_ACCESS_TOKEN: readEnvironmentVariable('LINE_CHANNEL_ACCESS_TOKEN', 'default-access-token')
  LINE_CHANNEL_SECRET: readEnvironmentVariable('LINE_CHANNEL_SECRET', 'default-channel-secret')
  // GOOGLE_API_KEY: readEnvironmentVariable('GOOGLE_API_KEY', 'default-google-api-key')
  TAVILY_API_KEY: readEnvironmentVariable('TAVILY_API_KEY', 'default-tavily-api-key')
  OPENAI_API_KEY: readEnvironmentVariable('OPENAI_API_KEY', 'default-openai-api-key')
  FIRECRAWL_API_KEY: readEnvironmentVariable('FIRECRAWL_API_KEY', 'default-firecrawl-api-key')
  COSMOS_DB_DATABASE_NAME: readEnvironmentVariable('COSMOS_DB_DATABASE_NAME', 'DEMO')
}

param cosmosDbAccountName = readEnvironmentVariable('AZURE_COSMOSDB_NAME', '')
param cosmosDbResourceGroupName = readEnvironmentVariable('AZURE_COSMOSDB_RG', '')
param appServicePlanName = readEnvironmentVariable('AZURE_APPSERVICEPLAN_NAME', '')
param appServicePlanResourceGroupName  = readEnvironmentVariable('AZURE_APPSERVICEPLAN_RG', '')
