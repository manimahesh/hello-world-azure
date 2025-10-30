# Define your GitHub details
APP_ID=fcb7fdd1-8f17-44f2-a951-cc851c7cb96b

# Create the Federated Credential
az ad app federated-credential create --id $APP_ID --parameters credentials.json
