# Use this tool to provision and configure resources in Azure

## Start: Run the container
```
docker container run --name cmp --rm -it node4demo/n4stack-manage:latest
```

## Locate the scripts
```
cd scripts
```

## Login To Azure
```
./login.sh
```
### Create an Azure Storage Account
```
./create-storage-account.sh
```

### Create an Azure Virtual Network
```
./create-vnet.sh
```

### Create an Azure Virtual Machine
```
./create-vm.sh
```

### Set Allowed Region policy for a Resource Group
```
./allowed-locations-policy.sh
```


