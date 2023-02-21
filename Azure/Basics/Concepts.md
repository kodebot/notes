# Why Clould? 

1. Cheap
2. Scalable
3. Better infrastructure

# How Azure works?

Azure uses virtualisation called `Hypervisor` to decouple os and the hardward and runs many virtual machines on one machine.

Physical Server + Hypervisor = Many virtual servers

* Microsoft has datacenters across the world
* Each datacenter has many racks
* Each rack has many servers

All the servers of a rack are connected to network switch

One server in each rack runs `Fabric Controller`.

`Fabric Controller`s are connected to `Orchestrator`.

`Orhestrators` is responsible for everything that happens in Azure. All the actions that user performs in Azure is sent to `Orchestrator` via its web api.

# Main offerings
1. Compute
    * VM, VMSS, K8s, ServiceFab, Batch, Container Instance and Functions
2. Networking
3. Storage (Blob, File, Queue, Table)
4. Mobile Services (Data sync, push notification, etc...)
5. Databases
6. Web
7. IoT
8. Big Data
9. AI
10. DevOps

# Hierarchy

```
Azure Account
|
|__ Subscription(s)
    |
    |__ Resource Group(s)
        |
        |__ Resource(s) (like VM, Database, storage account, etc...)

```

# Cloud Computing Deployment Model

* Public cloud
* Private cloud
* Hybrid cloud


# Cloud Service Model

* IaaS
* PaaS
* Saas

# Organising structure

```
Management group(s)
|
|__Subscription(s)
    |
    |__Resource Group(s)
        |
        |__ Resource(s)
```

`Management group` ➡️ allows managing multiple subscritions by applying access, policy and compliance at management group level. All the subs under a management group inherits all these props.


`Subscription` ➡️  groups users and resources created by those users. Limits and quotas can be applied to each sub and orgs can use sub to manage cost and resources created by team/projects.

`Resource Groups` ➡️  logical container for resources

`Resource` ➡️ things you create in Azure


# Region, Availability Zones and Region Pairs

* `Region` - Geographical location that contains at least one Azure data center. Azure has many Regions across the world. 

    * When a region has more than one data centers then they are networked together with low latency network. 

    * West US, West Europe and Japan are some examples of region

    * Azure has special regions that can be used for compliance and legal purposes.
        
        * US DoD Central, US Gov Virginia, etc..
        * China East, China North, etc..

* `Availability Zone` - is made up of one or more data centers withindependentt power, cooling and networking. 

    * It is isolation boundary, so if one goes down, other will continue to work
    * Availability Zones are connected via high speed, private fiber optic networks
    * Availability Zones are generally not far from each other
    * Not all regions support availability zone
    * Zonal Service - resources are pinned to a zone
    * Zone-redundant service - platform replicates across zones
    * Non-regional service - available from Azure geographics and resilient to zone-wide outage

* `Region Pairs` - two regions within same geography (US, Europe, Asia, etc..)
    * there could be diasters where multiple availablility zones within a region is affected.
    * with region pairs, resources are replicated to paired region (geo-redundant)
    * when both regions are affected, Microsoft prioritises to restore service on one of the paried region ASAP
    * Data resides within same geography except for Brazil South (South Central US is the pair)


# Azure Resource and Azure Resource Manager (ARM)

## Resource group
* logical group of resources
* controls lifecycle of resoruces under it. i.e. if you delete rg all the resources in that are gone
* can apply RBAC permissions are rg level
* a resource can only be part of one rg
* rgs cannot be nested


## ARM 
* is deployment and management servic for Azure.
* provides management layer to CRUD resources
* Azure portal, Azure PS, Azure CLI, REST Clients all intracts with ARM to manage resources
* it is declarative in nature


# Azure Subscription
* provides authenticated access to services and products
* logical unit for resources linked to Azure account
* An account can have more than one subs
* Azure accont is identity in Azure AD or similar
* subs can be used to define boundaries
    * billing boundary
    * access control boundary
* limits can be applied on subs

if you have multiple subs, invocie section allows you to organise your invoice

# Azure management groups

* gropus subs
* allows managaging access, policies and compliance for group of subs
* all subs must trust same AD tenant for this to work
* you can have hierarchy of management groups (max 6 level deep and 10,000 in total)

