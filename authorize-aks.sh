APP_ID=5f55da87-40c6-4f6b-9fbb-f5b130a7d28a
SUBSCRIPTION_ID=$(az account show --query id --output tsv)
RESOURCE_GROUP="mmani-azure-resource-group"

# Role for deployment operations (kubectl apply, etc.)
az role assignment create \
  --assignee $APP_ID \
  --role "Contributor" \
  --scope "/subscriptions/$SUBSCRIPTION_ID/resourceGroups/$RESOURCE_GROUP"
  
# NOTE: For least privilege, you can also use a custom role, 
# but Contributor on the RG is common for full deployment access.