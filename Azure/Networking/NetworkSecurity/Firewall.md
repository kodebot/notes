# Azure Firewall
 
* cloud based Network security appliance to protect Azure  Virtual Network resources
* stateful
* built-in High Availability (HA)
* supports Availability Zones
    * standard SLA 99.95%
    * but with Availability Zone it is - 99.99%
* Application FQDN filtering rules
    * can limit outbound http/s or Azure SQL traffic to specified list of FQDN(wildcards allowed)
* Network traffic filtering rules (similar to NSG)
* FQDN Tags
    * allow well known traffic (like Windows Update) by creating App rule with the Tag
* Service Tags
    * MS managed grouping of services
* Threat Intelligence
    * MS Threat intelligence feed
* SNAT/DNAT (Src & Dest)
    * Outbound SNAT support
    * Inbound DNAT support
