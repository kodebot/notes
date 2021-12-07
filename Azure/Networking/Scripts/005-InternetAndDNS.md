# Internet Access

* all resources in VNET can communicate to the internet by default
* private IP are source NAT'ed (SNAT) to Azure selected PIP
* outbound traffics can be restricted via
    * routes
    * traffic filtering