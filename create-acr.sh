ACR_NAME="mmaniacr" # <<< MUST BE UNIQUE
RESOURCE_GROUP="mmani-azure-resource-group"

az acr create \
  --resource-group $RESOURCE_GROUP \
  --name $ACR_NAME \
  --sku Premium \
  --admin-enabled true

# Output will include the 'loginServer' which is: myuniqueregistry001.azurecr.io