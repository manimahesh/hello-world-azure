# Define your GitHub details
ORG_NAME="manimahesh"
REPO_NAME="hello-world-azure"
BRANCH_NAME="main" # Use 'pull_request' for pull request triggers
APP_ID=5f55da87-40c6-4f6b-9fbb-f5b130a7d28a


# Subject Identifier format: repo:<ORG>/<REPO>:ref:refs/heads/<BRANCH>
SUBJECT="repo:$ORG_NAME/$REPO_NAME:ref:refs/heads/$BRANCH_NAME"

# Create the Federated Credential
az ad app federated-credential create \
  --id $APP_ID \
  --name "GitHubOIDC-$REPO_NAME" \
  --issuer "https://token.actions.githubusercontent.com" \
  --subject $SUBJECT \
  --audiences "api://AzureADTokenExchange"
