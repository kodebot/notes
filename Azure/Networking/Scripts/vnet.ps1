$rg = "temp-mani-vnet-rg"
$location = "eastus"

$vnetName = "temp-mani-vnet1"
$vnetAddressSpace = "10.0.0.0/22"

$subnet1 = New-AzVirtualNetworkSubnetConfig -Name "temp-mani-subnet1" -AddressPrefix "10.0.0.0/24"
$subnet2 = New-AzVirtualNetworkSubnetConfig -Name "temp-mani-subnet2" -AddressPrefix "10.0.1.0/24"

New-AzResourceGroup -Name $rg -Location $location

# you can directly set the result of New-AzVirtualNetwork to a variable if you want to use VNET
# further instead of Get-AzVirtualNetwork
New-AzVirtualNetwork -Name $vnetName -Location $location -ResourceGroupName $rg -AddressPrefix $vnetAddressSpace -Subnet $subnet1,$subnet2


# add more subnets after creating VNET

$virtualNetwork = Get-AzVirtualNetwork -Name $vnetName

$subnet3 = Add-AzVirtualNetworkSubnetConfig `
            -Name "temp-mani-subnet3" `
            -AddressPrefix "10.0.3.0/24" `
            -VirtualNetwork $virtualNetwork

# commit the changes

$virtualNetwork | Set-AzVirtualNetwork


# remove
 Remove-AzResourceGroup -Name $rg