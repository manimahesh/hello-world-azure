ACR_NAME="mmaniecr"
ACR_ID=$(az acr show --name $ACR_NAME --query id -o tsv)
APP_ID=5f55da87-40c6-4f6b-9fbb-f5b130a7d28a

# Role for CI/CD to build and push images
az role assignment create \
  --assignee $APP_ID \
  --role "AcrPush" \
  --scope $ACR_ID