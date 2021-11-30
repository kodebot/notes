# Azure App Service

* App can be Web Apps, API Apps or Mobile Apps
* Alwasy runs in an App Service Plan
* One or more apps can run in App Service Plan
* Functions can be configured to run in App Service Plan too

## App service plan defines
* Region
* Number of VM Instances
* Size of VM (small, medium, large)
* Pricing tier (Free, Standard, etc...)
    * Free and Shared uses Shared Compute (shared with other customers)
    * Basic, Standard, Premium, PV2 and PV3 uses Dedicated VMs
    * Isolated uses isolated VMs with dedicated Azure Virtual Networks (network isolation)