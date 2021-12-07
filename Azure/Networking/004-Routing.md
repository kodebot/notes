# Routing

defines how traffic reaches from one source to dest

Every subnet in Azure has the following *System Routes*

* Local VNET
    * no next-hop value
    * used for resources in the same VNET

* On-Premises
    * Route for defined on-prem address space
    * VNet Gateway is the next-hop address

* Internet