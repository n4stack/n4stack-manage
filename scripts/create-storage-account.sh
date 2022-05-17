#!/bin/bash

# Request a storage Account Example
# az storage account create --resource-group rg-011991 --name sa01991  -l northeurope  --sku Standard_LRS

echo "Please enter your storage account name, alphanumeric, no spaces. E.g: samyapp1 Use Control-C to exit."

read saname

read -p "Do you want to proceed? (yes/no) " yn

case $yn in 
	yes ) echo ok, we will proceed;;
	no ) echo exiting...;
		exit;;
	* ) echo invalid response;
		exit 1;;
esac

rg="rg-"$saname

location=northeurope

echo
echo "... now creating Resource Group $rg"
echo

az group create -l $location -n $rg

echo
echo "... now creating storage account: $saname"
echo

sku=Standard_LRS

az storage account create --resource-group $rg --name $saname  -l $location --sku $sku

echo "... finished"

