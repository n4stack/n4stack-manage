# Create a VM in a new VNET example automation

echo
echo "Please enter details to create a new VM. Use Control-C to exit."
read -p 'Resource Group - e.g: rg-myvm ' rg
read -p 'VM Name - e.g: myvm01 ' vmname
read -p 'VNET Name - e.g: vnet01 ' vname
read -p 'Subnet Name - e.g: snet01 ' sname

echo
echo "You have entered $rg $vmname $vname $sname "
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
echo "Creating an Ubuntu VM..."

# Request a VM 
az vm create -n $vmname  --location northeurope -g $rg --image UbuntuLTS \
  --subnet sname --size Standard_D2s_v3 --vnet-name $vname --generate-ssh-keys 

echo
echo "finished..."



