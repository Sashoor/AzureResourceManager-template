# setting a location variable
$location = 'UK sotuh'
# setting up a rg name by variable 
$rgName = 'az104-06-rg1'    

# creating azgroup using the rg variable and the location variable
New-AzResourceGroup -Name $rgName -Location $location

# to connect to az account
Connect-AzAccount



# create the three virtual networks and four Azure VMs into them by using the template and parameter files you uploaded:
New-AzResourceGroupDeployment `
   -ResourceGroupName $rgName `
   -TemplateFile $HOME/az104-06-vms-loop-template.json `
   -TemplateParameterFile $HOME/az104-06-vms-loop-parameters.