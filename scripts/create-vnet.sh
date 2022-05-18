#!/bin/bash
# Create a VM in a new VNET example automation

echo "Please enter details to create a new VNET."
read -p 'Resource Group - e.g: rgmyvm ' rg
read -p 'location - e.g: northeurope uksouth ukwest ' l
read -p 'VNET Name - e.g: vnet01 ' vname
read -p 'Subnet Name - e.g: snet01 ' sname
read -p 'VNET Address Prefix - e.g: 10.100.0.0/16   ' vprefix
read -p 'Subnet Address Prefix - e.g: 10.100.0.0/24   ' sprefix
read -p 'Please enter tags for this resource. E.g: tier=dev   ' tags

echo "These are your entered values: " $vname $sname $vprefix $sprefix $tags

read -p "Do you want to proceed? (yes/no) " yn

case $yn in 
	yes ) echo ok, we will proceed;;
	no ) echo exiting...;
		exit;;
	* ) echo invalid response;
		exit 1;;
esac

echo
echo ".. Creating Resource Group"
echo

# Request a resource group
az group create -l $l -n $rg
echo
echo "Creating a VNET..."
echo

# Request a VNET
az network vnet create -g $rg -n $vname --subnet-name $sname --address-prefix $vprefix --subnet-prefix $sprefix -l $l  --tags $tags
echo
echo "finished..."
echo



