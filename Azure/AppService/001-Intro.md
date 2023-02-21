# Azure App Service

* App is HTTP based service - Web App, APIs or mobile app backend
* Always runs in an App Service Plan
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
    * Linux not supported in shared pricing tier
    * Can't mix linux and windows apps in the same App Service Plan
    * Historically can't even share rg for linux and windows resources but this has changed on 📅 21<sup>st</sup> Jan 2021 


## How running and scaling apps work?

* An app runs on all the VM instances available in the App Service Plan
* If multiple app are running in the App Service Plan then each app run on all of the VM instalnces
* When multiple deployment slots are created, each slot runs on all of the VM instances
* Any additional activities like logging, backup or running WebJob affects the performance of the the Apps becuase they too use the CPU of the VM instances

In other words, App service plane is `scale unit` for apps.

* App Service Plan can be scalled up and down anytime by chaning the pricing tier
* Moving app from one App Service Plan to another is possible as long as both plans are in the same region

## Deployments

* Automated Deployment
    * Azure DevOps
    * Github
    * Bitbucket

* Manual
    * Git
    * CLI
    * ZIP
    * FTP