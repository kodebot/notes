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
    * 