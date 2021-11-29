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
