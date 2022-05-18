#!/bin/bash
# Create a VM in a new VNET example automation

echo "Please enter details to create a new VNET."
read -p 'VNET Name - e.g: vnet01 ' vname
read -p 'Subnet Name - e.g: snet01 ' sname
read -p 'VNET Address Prefix - e.g: 10.100.0.0/16   ' vprefix
read -p 'Subnet Address Prefix - e.g: 10.100.0.0/24   ' sprefix

echo "These are your entered values: " $vname $sname $vprefix $sprefix

read -p "Do you want to proceed? (yes/no) " yn

case $yn in 
	yes ) echo ok, we will proceed;;
	no ) echo exiting...;
		exit;;
	* ) echo invalid response;
		exit 1;;
esac

rg="rg-"$vname
l=northeurope

echo
echo ".. Creating Resource Group"
echo

# Request a resource group
az group create -l northeurope -n $rg
echo
echo "Creating a VNET..."
echo

# Request a VNET
az network vnet create -g $rg -n $vname --address-prefix vprefix --subnet-name $sname --subnet-prefix $sprefix -l $l
echo
echo "finished..."
echo



