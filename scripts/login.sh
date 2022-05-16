echo "1) Adding extension to support subscriptions"
az config set extension.use_dynamic_install=yes_without_prompt
az extension add --name subscription

echo "2) Logging in user to Azure"
az login

clear

az account show --output table

echo
echo "3) Ready to run commands..."
echo

