## Create the Docker image

```
docker image build . -t node4demo/cmp:latest -t node4demo/cmp:0.1.2 -t node4demo/n4stack-manage:0.1.2 -t node4demo/n4stack-manage:latest
```

## login to docker Hub and push image
```
docker login --username node4demo -p my-password
```

```
docker push node4demo/n4stack-manage:0.1.2
docker push node4demo/n4stack-manage:latest
```

## now run container locally
```
docker container run --name cmp --rm -it node4demo/n4stack-manage:latest
```

## review scripts
```
bash5.1# ls ./scripts
```

## run login command to login to Azure
```
bash5.1# ./scripts/login.sh
```

## Example: To create an Azure Storage Account
```
./scripts/create-storage-account.sh
```
