# Security Center

Available under all services

* Policy & Compliance
    * overall score
    * sub coverage
    * any regulatory compliance


* install agents on VMs
* pricing
    * free (for Azure resources only)
        * cont. assessment and reco
        * Azure secure score
    * standard
        * just in time VM access (advance cloud defence)
            * request access
            * approver approves
            * enable ports for a period of time 
        * adaptive application control and netowrk monitoring (advance cloud defence)
            * learn what your app/network does and provides recos based on that
                * for example reco to whitelist some apps
        * file integirty monitoring
        * regulatory compliance dash and report
        * threat protection for Azure VMs and non-Azure servers
            * including server EDR
        * threat protection for supported  PaaS services


* auto provisioning allow
    * Microsoft Monitoring Agent (MMA) to be installed on new and existing VMs 
    * MMA should be connected to collect security data
    * data are collected to log analytics workspace

* email notifications can be confifigured for attacks

* threat detection
    * allow integration with other MS services
        * data can be accessed by MS Cloud App Security
        * data can be accessed by Windows Defender ATP

* workflow automation
    * depending on the alert that comes in you can
        * trigger a logic app

*  continous export
    * allows us to stream export of security alert to multiple targets like
        * event hub



some of the recos can be applied by clicking `Quick Fix`