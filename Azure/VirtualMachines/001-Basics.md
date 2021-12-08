# Overview

* it is IaaS 
* not going to disapper anytime soon regardless of all PaaS and SaaS

![image VM](./img/vm.png)


Vmware - Vspear
Microsoft - Hypervisor


## VM Types

* A - Basic - for test and dev
* A - Standard - Gen purpose

* B - Burstable - burst to full capacity of the VM when needed (built credits and use that to burst)

* D - General Purpose (used most often) - for enterprice apps. DS offers premium storage

* DC - General Purpose secure - used for fraud detection, blockchain, AML, etc..

* E - Memory Optimised - high mem to cpu ratio. ES offers premium storage

* F - CPU optimised - high CPU core to mem ratio. FS offers Premium storage

* G - Godzilla - very large instance used for databases and big data use cases

* H - High Performance compute instances - for molecular modelling and scientific applications

* L - Storage optimised - higher disk throughput and IO

* M - Large Memory - Another large mem instance but it is huge one - upto 3.5 TB or RAM ( Microsoft is keep increasing it)o

* N - GPU enabled (NVIDA)

* SAP HANA on Azure Certified instance - purpose built and certified for running SAP HANA

[Reference](https://docs.microsoft.com/en-us/learn/modules/configure-virtual-machines/4-determine-virtual-machine-sizing)

## VM Specialisation

the VM series name can combine multiple codes too

for example 
* A2m_v2 - is a A series but configured with large memory
* H16mr - is H instance that supports Remote Direct Memory Access ( from R instance)


![image VM Specialisation](./img/vm-specialisation.png)

[More Info](https://azure.microsoft.com/en-gb/pricing/details/virtual-machines/series/)

## Azure Compute Unit (ACU)

* way to compare CPU perf between diff types/sizes of VM
* MS created benchmark
* A VM with 200 ACU has twice the perf of a VM with 100 ACU


MS created this because it was difficult to express how fast a VM is going to be compared to another VM

[More Info](https://docs.microsoft.com/en-gb/azure/virtual-machines/acu)

## Supported OS and Distro

[Windows Support](https://docs.microsoft.com/en-GB/troubleshoot/azure/virtual-machines/server-software-support)

[Windows](https://docs.microsoft.com/en-us/azure/virtual-machines/windows/overview)
[Liux](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/overview)