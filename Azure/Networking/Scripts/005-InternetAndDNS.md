# Internet Access

* all resources in VNET can communicate to the internet by default
* private IP are source NAT'ed (SNAT) to Azure selected PIP
* outbound traffics can be restricted via
    * routes
    * traffic filtering
* inbound connectivity without SNAT requires PIP

## Options for inbound internet access

* add PIP to the service (not recommended)
* LB with PIP and services behind it
* Use NVA with PIP

> Network Virtual Appliance (NVA) are often full linux VM with primary foucus on Network functions virtualisations

# DNS

Domain Name System (DNS) is used for name resolutions

Options
* Azure provided
* custom
    * Iaas VM with DNS
    * Infoblox Virtual Appliance

Role instances are classic cloud service that offers Web Server (Web Role) and App Server (Worker Role) as PaaS. This is no longer recommended and will be retired in Aug 2204, alternative is Cloud Services (extended support).


## DNS Scenarios and Recos

* name resolution between role instances or VMs in SAME VNET, then use
    * Azure DNS or
    * Azure DNS Private Zones
    
* name resolution between role instances or VMs in DIFFERENT VNET, then use
    * Azure DNS Private Zones or 
    * customer managed DNS servers

* resolution of On-permises and service names from RI & VMs 
    * customer managed DNS servers

* resolution of Azure hostnames from on-premises
    * customer managed forwarding queries to Azure for name resolution

[References](https://docs.microsoft.com/en-gb/azure/virtual-network/virtual-networks-name-resolution-for-vms-and-role-instances)


* in the DNS servers section of VNET in the portal, you can set the custom DNS server
    * VMs in the network need restarting to use new DNS server

## Private DNS

Private DNS is private alternative to azure provided default (internet faced and Microsoft managed) and Customer managed.

* create Private Zone
* add Virtual network link - for the VNET
    * make sure to turn on Enable auto registration (this ensures VMs are auto registered with DNS when they are added)

Change Firewall in windows to allow ICMPv4 (ping) (Internet Control Message protocol)
```
   New-NetFirewallRule -DisplayName "Allow ICMPv4-In" -Protocol ICMPv4 
```