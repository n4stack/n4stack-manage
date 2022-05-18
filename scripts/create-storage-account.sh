#!/bin/bash

# Request a storage Account Example
# az storage account create --resource-group rg-011991 --name sa01991  -l northeurope  --sku Standard_LRS --tags tier=dev

location=northeurope

read -p 'Please enter your storage account name, e.g: samyapp1 ' saname
read -p 'Please enter tags for this resource. E.g: tier=dev   ' tags

rg="rg-"$saname

read -p "This will create a Storage Account in Resource Group: $rg in $location region. Do you want to proceed? (yes/no) " yn

case $yn in 
	yes ) echo ok, we will proceed;;
	no ) echo exiting...;
		exit;;
	* ) echo invalid response;
		exit 1;;
esac

echo
echo "... now creating Resource Group: $rg"
echo

az group create -l $location -n $rg

echo
echo "... now creating Storage Account: $saname"
echo

sku=Standard_LRS

az storage account create --resource-group $rg --name $saname  -l $location --sku $sku --tags $tags

echo "... Finished"
echo

