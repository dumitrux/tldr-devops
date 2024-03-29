$SUBCRIPTION_NAME=''
$RESOURCE_GROUP_NAME='rg-tfstate'
$STORAGE_ACCOUNT_NAME="tfstate01$(get-random)"
$CONTAINER_NAME='tfstate'

# Set subscription to be the current active subscription.
az account show
az account set --subscription <subscription_id>

# Create resource group
az group create --name $RESOURCE_GROUP_NAME --location eastus

# Create storage account
az storage account create --resource-group $RESOURCE_GROUP_NAME --name $STORAGE_ACCOUNT_NAME --sku Standard_LRS --encryption-services blob

# Create blob container
az storage container create --name $CONTAINER_NAME --account-name $STORAGE_ACCOUNT_NAME

#Get the storage access key and store it as an environment variable
$ACCOUNT_KEY=$(az storage account keys list --resource-group $RESOURCE_GROUP_NAME --account-name $STORAGE_ACCOUNT_NAME --query '[0].value' -o tsv) 
$env:ARM_ACCESS_KEY=$ACCOUNT_KEY
