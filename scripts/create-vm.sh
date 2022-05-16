# Create a VM in a new VNET example automation

echo "Running steps to provision an Ubuntu VM into a new VNET..."

# Request a resource group
az group create -l northeurope -n rg-vm-app-011991

echo
echo "Creating a VNET..."

# Request a VNET
az network vnet create -g rg-vm-app-011991 -n MyVnet --address-prefix 10.0.0.0/16 --subnet-name MySubnet --subnet-prefix 10.0.0.0/24 -l northeurope

echo
echo "Creating an Ubuntu VM..."

# Request a VM 
az vm create -n my-vm  --location northeurope -g rg-vm-app-011991 --image UbuntuLTS --subnet MySubnet --size Standard_D2s_v3 --vnet-name MyVnet --generate-ssh-keys 

echo
echo "finished..."



