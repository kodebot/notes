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
    * Route for all traffic destined to Internet
    * Internet Gateway is the next-hop


![image](./img/subnet-routing.png)

# User defined routing

Overrides the default system routing

commonly used to
* force tunneling
* manage internet traffic on VMs