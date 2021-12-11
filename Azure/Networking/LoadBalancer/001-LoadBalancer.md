# Azure Load Balancer

* third party LB like F5 can be used

## Services

* Basic and Standard LB
    * Standard is preferred
    * small scale
    * public or private

* Application Gateway
    * specialised for web traffic
    * URL routing
    * webapp firewall ability

* Traffic Manager
    * Global traffic management
        * for globally distributed app ( more like DNS level traffic management)
        * separate traffic across regions


## Basic LB

* Layer 4
* Supports upto 100 instances
* VMs in single Availability set or VMSS
* service monitoring
    * probe the health of instances behind the LB so traffic can be sent to diff node
* automated reconfiguring
    * when instances are added/removed LB takes care of balancing the traffic as needed
* hash-based distibution
    * uses 5 tuple hash, composed of
        * src port
        * src IP
        * dest port
        * dest IP
        * IP protocol number
* internal or public

## Standard LB

all from Basic and

* upto 1000 instances
* any VM in a single VNET
* supports Https
* availablity zone support
* secure by default

