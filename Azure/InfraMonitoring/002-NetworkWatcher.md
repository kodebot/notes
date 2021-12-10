# Network watcher

Monitors network activities

To use this, Network watcher Agent must be installed in the VMs

## Add network watcher

Can be added using Extensions in the VM
* Choose Network Watcher Agent for windows/linux (can be added when VM is provisioned too)


Go to Network Watcher from All Services and make sure it is enabled for the region you want to use NW. If not enabled, you can simply enable from there.

### Monitoring

* Topology
    * Shows the topology of connected resources 
* Connection Monitor
    * Track connection between two machines
        * to make sure one machine is accessible from another on a give port
* Network Performance Monitor
    * Monitor network performance

### Network Diagnostic tools

* IP flow verify
    * will show you if a particular packet (port, protocol type, inbound/outbound, etc) allowed or denied
        * will show the firewall rules that denies the packet

* Next hop
    * shows the next hob for a connection from source to dest

* Security Group View
    * show all the firewall rules effective for the selected NIC (at VNET and Subnet level)

* VPN troubleshoot

* Packet capture

* Connection troubleshoot