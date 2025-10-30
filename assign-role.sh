# Get your Subscription ID
SUBSCRIPTION_ID=$(az account show --query id --output tsv)

# OPTION 1: Assign Contributor role at the Resource Group scope
# Best practice is to use the narrowest scope.
RESOURCE_GROUP="mmani-azure-resource-group"
APP_ID="fcb7fdd1-8f17-44f2-a951-cc851c7cb96b"

az role assignment create \
  --role "Contributor" \
  --assignee $APP_ID \
  --scope /subscriptions/$SUBSCRIPTION_ID/resourceGroups/$RESOURCE_GROUP

# OPTION 2: If you need it for the whole subscription (less secure)
# az role assignment create --role "Contributor" --assignee $APP_ID --scope /subscriptions/$SUBSCRIPTION_ID