$rg = "temp-mani-vnet-rg"
$location = "eastus"

$vnetName = "temp-mani-vnet1"
$vnetAddressSpace = "10.0.0.0/22"

$subnet1 = New-AzVirtualNetworkSubnetConfig -Name "temp-mani-subnet1" -AddressPrefix "10.0.0.0/24"