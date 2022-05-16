# Request a storage Account Example
# az storage account create --resource-group rg-011991 --name sa01991  -l northeurope --sku Standard_LRS

rg=rg-sa01881
location=northeurope

echo "Creating Resource Group..."

az group create -l $location -n $rg

echo "Creating storage account..."

saname=sa01881
sku=Standard_LRS

az storage account create --resource-group $rg --name $saname  -l $location --sku $sku

