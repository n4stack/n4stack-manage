#!/bin/bash

read -p 'Resource Group - e.g: rgmyvm ' rg
read -p 'Please enter your storage account name, e.g: samyapp1 ' saname
read -p 'location - e.g: northeurope uksouth ukwest ' l
read -p 'sku - e.g: Standard_LRS ' sku
read -p 'Please enter tags for this resource. E.g: tier=dev   ' tags
read -p "Do you want to proceed? (yes/no) " yn

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

az group create -l $l -n $rg

echo
echo "... now creating Storage Account: $saname"
echo

sku=Standard_LRS

az storage account create --resource-group $rg --name $saname  -l $l --sku $sku --tags $tags

echo "... Finished"
echo

