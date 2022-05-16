# Request a storage Account Example
# az storage account create --resource-group rg-011991 --name sa01991  -l northeurope --sku Standard_LRS


rg=rg-vnet-011991
vnet-name=ne-vnet011991
location=northeurope
vnet-addr=10.220.0.0/16
snet-addr=10.220.0.0/24
snet-name=ne-sn011991
sku=Standard_LRS

echo "Running steps to provision an Ubuntu VM into a new VNET..."

# Request a resource group
az group create -l $location -n $rg

# Request a VNET
az network vnet create -g $rg -n $vnet-name --address-prefix $vnet-addr --location $location \
  --subnet-name $snet-name  -sn --subnet-prefix $snet-addr

# Request a VM 
az vm create -n uks-vm-01191 --location $location -g $rg \
   --image UbuntuLTS --subnet northeurope-vnet --size Standard_D2s_v3 --generate-ssh-keys



