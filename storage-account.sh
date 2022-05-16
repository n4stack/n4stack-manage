# Request a storage Account Example
# az storage account create --resource-group rg-011991 --name sa01991  -l northeurope --sku Standard_LRS


rg=rg-4-sa01881
sa-name=sa01881
location=northeurope
sku=Standard_LRS

echo "Attempting to creating storage account..."

az group create -l $location -n $rg

az storage account create --resource-group $rg --name $sa-name  -l $location --sku $sku

