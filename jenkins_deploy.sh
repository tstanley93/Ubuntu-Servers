az login --service-principal -u $My_User -p $My_Pass --tenant $My_Tenant

az group create --name demoapp06 --location "West US 2"

az group deployment create \
    --name demoapp06 \
    --resource-group demoapp06 \
    --template-uri "https://raw.githubusercontent.com/tstanley93/Ubuntu-Servers/master/azuredeploy.json" \
    --parameters adminUsername=tstanley adminPassword=Junct10n1234 publicDNSName=demoapp06 vmSize=Standard_D2S_V3


