# VNET
A networking resource in Azure

* A VNET will have address range and one or more subnets
* Subnets will have its own address range that falls within the VNET range
* one subnet can be connected to antoher subnet
* VNETs are isolated 
    - 2 can have same address space as long as they were not connected to each other
    - when you connect two that have same or overlapping range then you will have problems 😞
* default OUT internet access
* IN internet access can be achieved using public ip
* can connect to other Azure resources
* can connect to on-premise
* traffic filter
* routing
* 2 VNETs can be connected to each other

## IP Range

* can use IP range defined in RFC1918 (10.0.0.0/16)
* cannot use the following range
    - 224.0.0.0/4 (Multicast)
    - 255.255.255.255/32 (Broadcast)
    - 127.0.0.0 (Loopback)
    - 169.254.0.0/16 (link-local)
    - 168.63.129.16/32 (intenal DNS)
* can attach pub ip

## Azure Reserved IP Addresses

Azure reserves 5 in each subnet

> x.x.x.0 to x.x.x.3 and the last address of the subnet

* x.x.x.0 - Network address
* x.x.x.1 - Default gateway
* x.x.x.2 and 3 - used for DNS mapping
* x.x.x.255 - broadcast address

## Public IP (PIP)

Allows inbound and outbound access to internet

without public IP, outbound connection are done using Network Address Transalation (NAT)

PIP can be assined to 

* VM NIC
* pub load balancer
* VPN and app gateway
* Azure Firewall

### SKU
* basic (old default) 
    - static or dynamic - default dynamic
    - open by default but NSG recommended
    - allowed on all resources that supports PIP
    - availability zones not supported
* standard
    - preferred
    - static by default
    - open for outbound
    - closed by default for inbound
    - can be assinged only to limited types of Azure resources
        * NIC
        * Standard LB
        * App Gateways
    - supports Availablilty Zones - can be Zone redundant or zonal

# DNS

* Azure provided
* custom


# Hub and Spoke model

![image hub and spoke](./img/hubnspoke.png)