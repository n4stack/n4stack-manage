# create a resource group
l=northeurope
rg=ne-rg-gp011991
az group create -l $l -n $rg

# Retreive built in policy definition
definition=0473574d-2d43-4217-aefe-941fcdf7e684

# set scope of group policy
scope=$(az group show --name $rg --output tsv --query id)

# set policy params
policyparam='{ "listOfAllowedLocations": { "value": ["uksouth", "ukwest", "northeurope"]}}'

# create policy on resource group
az policy assignment create --name 'allowedLocations' --display-name 'allowedLocations' \
  --scope $scope --policy $definition --params "$policyparam" --output jsonc



