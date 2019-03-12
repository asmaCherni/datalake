 #!/bin/bash
DATA_LAKE_RG='sandbox-nl02330-005-rg'
DATA_LAKE_LOCATION='westeurope'

#DATA_LAKE_STORAGE='rcdx3'
# Create a new storage (ADLS Gen2) Account
#az storage account create \
#--name $DATA_LAKE_STORAGE  \
#--resource-group $DATA_LAKE_RG  \
#--location $DATA_LAKE_LOCATION  \
#--sku Standard_LRS \
#--kind StorageV2  \
#--hierarchical-namespace true   
DATA_LAKE_WORKFLOW='datalakeorchestrator'
ARM_LOCATION='arm/data_factory.json'
ARM_PROPS_LOCATION='../conf/data_factory_prop.json'
# Create Data Factory Version 2 
az group deployment create \
 --name $DATA_LAKE_WORKFLOW \
 --resource-group $DATA_LAKE_RG \
 --template-file $ARM_LOCATION \
 --parameters $ARM_PROPS_LOCATION     