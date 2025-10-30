ACR_NAME="mmaniecr"
ACR_ID=$(az acr show --name $ACR_NAME --query id -o tsv)
APP_ID=fcb7fdd1-8f17-44f2-a951-cc851c7cb96b

# Role for CI/CD to build and push images
az role assignment create \
  --assignee $APP_ID \
  --role "AcrPush" \
  --scope $ACR_ID