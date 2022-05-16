
# create a resource group
az group create -l northeurope -n ne-rg-gp011991

# Retreive built in policy definition
definition=0473574d-2d43-4217-aefe-941fcdf7e684

# set scope of group policy
scope=$(az group show --name ne-rg-gp011991 --output tsv --query id)

# set policy params
policyparam='{ "listOfAllowedLocations": { "value": ["uksouth", "ukwest", "northeurope"]}}'

# create policy on resource group
az policy assignment create --name 'allowedLocations' --display-name 'allowedLocations' --scope $scope --policy $definition --params "$policyparam" --output jsonc



