# Define cluster name
CLUSTER_NAME="mmani-aks-cluster"

# Define resource group name
RESOURCE_GROUP_NAME="mmani-azure-resource-group"

# Create the AKS cluster

az aks create \
  --resource-group $RESOURCE_GROUP_NAME \
  --name $CLUSTER_NAME \
  --node-count 2 \
  --enable-managed-identity \
  --node-vm-size Standard_D2s_v3 \
  --generate-ssh-keys