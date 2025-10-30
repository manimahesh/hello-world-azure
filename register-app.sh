# 1. Create the App Registration
APP_NAME="mmani-GitHubActions-OIDC"
APP_ID=$(az ad app create --display-name $APP_NAME --query appId --output tsv)

# 2. Create the Service Principal
az ad sp create --id $APP_ID

# 3. Get your Tenant ID
TENANT_ID=$(az account show --query tenantId --output tsv)

echo "App ID (Client ID): $APP_ID"
echo "Tenant ID: $TENANT_ID"