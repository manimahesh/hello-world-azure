# Get your Subscription ID
SUBSCRIPTION_ID=$(az account show --query id --output tsv)

# OPTION 1: Assign Contributor role at the Resource Group scope
# Best practice is to use the narrowest scope.
RESOURCE_GROUP="mmani-azure-resource-group"
APP_ID="5f55da87-40c6-4f6b-9fbb-f5b130a7d28a"

az role assignment create \
  --role "Contributor" \
  --assignee $APP_ID \
  --scope /subscriptions/$SUBSCRIPTION_ID/resourceGroups/$RESOURCE_GROUP

# OPTION 2: If you need it for the whole subscription (less secure)
# az role assignment create --role "Contributor" --assignee $APP_ID --scope /subscriptions/$SUBSCRIPTION_ID