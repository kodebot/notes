# Azure App Service

* App is HTTP based service - Web App, APIs or mobile app backend
* Alwasy runs in an App Service Plan
* One or more apps can run in App Service Plan
* Functions can be configured to run in App Service Plan too
* Built-in auto-scale support
* CI/CD support
* Deployment slot support
* Supports Linux

## App service plan defines
* Region
* Number of VM Instances
* Size of VM (small, medium, large)
* Pricing tier (Free, Standard, etc...)
    * Free and Shared uses Shared Compute (shared with other customers)
    * Basic, Standard, Premium, PV2 and PV3 uses Dedicated VMs
    * Isolated uses isolated VMs with dedicated Azure Virtual Networks (network isolation)
    * Consumption - only for Functions app - pay as you go

## Linux support

* Supports hosting web apps natively on Linux
* Can run custom linux containers too (aka Web App for Containers)
* You can view built in supported runtimes for linux using
    ```
    az webapp list-runtimes --linux
    ```

* Limitations
    * Linux not supoprted in shared pricing tier
    * Can't mix linux and windows apps in the same App Service Plan
    * Historically can't even share rg for linux and windows resoruces but this has changed on 21st Jan 2021