# Create a VM in a new VNET example automation
echo
echo "Please enter details to create a new VM. Use Control-C to exit."
echo
read -p 'location - e.g: northeurope ' l
read -p 'Resource Group - e.g: rg-myvm ' rg
read -p 'VM Name - e.g: myvm01 ' vmname
read -p 'VM Size - e.g: Standard_D2s_v3 ' vmsize
read -p 'VNET Name (that currently exists) - e.g: vnet01 ' vname
read -p 'Subnet Name (that currently exists) - e.g: snet01 ' sname
echo
echo "You have entered $l $rg $vmname $vmsize $vname $sname "
echo 
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

echo
echo "Creating an Ubuntu VM..."

# Request a VM 
az vm create -n $vmname  --location $l -g $rg --size $vmsize --image UbuntuLTS \
  --subnet sname --vnet-name $vname --generate-ssh-keys 

echo
echo "finished..."



