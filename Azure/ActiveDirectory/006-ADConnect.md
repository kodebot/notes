# AD Connect

Integrate On-premises AD to Azure AD

includes the following components
* sync services (AD Connect Sync feature)
    * creates users, groups and other objects in Azure AD
    * makes sure on-premises details are upto date with cloud
* active directory federation services (ADFS) (optional)
    * allows hybrid on-premises use
* health monitoring (Azure AD Connect Health)
    * robust monitoring
    * cetral loc for monitoring health activities


## AD Connect Sync

* filtering
    * allows to decide with objects are sync'ed to Azure AD
        * default
            * all users
            * contacts
            * groups
            * and windows 10 computers
    * filter can be changed based on props like domain, org units, etc...
* pwd hash sync
    * sync pwd hash from on-premises AD to Azure AD
        * so end user user can use same pwd in on-premises and the cloud
    * this allows on-premises pwd policies and sync the pwd to Azure AD
* pwd writeback
    * change pwd in Azure that will be update in on-premises
* device writeback
    * allow registered devices to be wirtten back to on-premises
* prevent accidental dels
    * truned on by default
        * protects against numerous deletes at once
            * by defaults prevents more than 500 deletes per run but can be changed to suit your neeeds
* automatic upgrade
    * enabled by default for express services


### Pwd sync options

* pwd sycn - both on-prem and Azure AD has same pwd
* passthrough - pass auth request to on-prem (essentially single source)
* ADFS - to fully federate across on-prem, Azure AD and other services
 
