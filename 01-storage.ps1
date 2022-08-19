$location = 'UK sotuh'

$rg = 'arm-introduction-01'

New-AzResourceGroup -Name $rg -Location $location -Force

New-AzResourceGroupDeployment `
  -ResourceGroupName $rg `
  -TemplateFile 01-storags.json `
   

