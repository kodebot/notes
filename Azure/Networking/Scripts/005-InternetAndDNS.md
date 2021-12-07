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

* name resolution between role instances or VMs in same VNET, the use
    * Azure DNS or
    * Azure DNS Private Zones
    