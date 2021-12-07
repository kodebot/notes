# General

Three main types of topologies


![image topology](./img/azure-topology.png)

# VNET Peering

2 VNETs can be connected using VNET peering

* can be in same or different supported Azure region
* can be in diff subs
* bandwidth will be same if 2 VNETs are in same region as if they are part of same network 
    * i.e. no extra bandwith if 2 VNETs are part of same region
* across region uses Azure backbone
* global peering can exist in 
    * Azure public cloud region
    * China Cloud regions
    * Gov Cloud regions
* cannot peer across the regions
    * i.e. VNET in Public Cloud region cannot be peered with China Cloud region
* can use remote gateways or allow gateway transit
    * in globally peered VNETs
    * in locally peered VNETs
* no overlapping Address spaces
* can't add or delete address range after peering is created
    * soulution is to deleting the peer make adjustments and recreate peer (DOWNTIME 😞)


![image hub-spoke-peering](./img/hub-spoke-peering.png)