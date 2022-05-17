
echo "Please enter your a Resource Group that you limit locations to UKSouth, UKWest. E.g rg-uk-only"

read rg

echo "you have entered $rg "

read -p "Do you want to proceed? (yes/no) " yn

case $yn in 
	yes ) echo ok, we will proceed;;
	no ) echo exiting...;
		exit;;
	* ) echo invalid response;
		exit 1;;
esac

echo
echo ".. now creating Resource Group $rg if not exist"
echo
az group create -l northeurope -n $rg

# Retreive built in policy definition
definition=0473574d-2d43-4217-aefe-941fcdf7e684

# set scope of group policy
scope=$(az group show --name ne-rg-gp011991 --output tsv --query id)

# set policy params
policyparam='{ "listOfAllowedLocations": { "value": ["uksouth", "ukwest", "northeurope"]}}'

# create policy on resource group
az policy assignment create --name 'allowedLocations' --display-name 'allowedLocations' --scope $scope --policy $definition --params "$policyparam" --output jsonc

echo
echo "... finished"

