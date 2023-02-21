# Active directory

used for authentication

Options
* Azure Active Director (AAD) (new and preferred for anything that supports it)
* Active Directory Domain Services (ADDS) ( setup within a windows server - on-prem, traditional)
* Azure Active Directory Domain Services (AADDS) - managed service


## AAD

* Morden AD built directly on cloud
* Often same as O365 directory service
* Can sync with on-prem

## ADDS 

* windows server with Active Directory role installed on it (usually on VM)
* legacy since Windows 2000
* traditional LDAP and Kerberos functionality

## AADDS

* managed Domain Service (PaaS)
* allow domain services without need to patch and maintain on IaaS (MS managed)
* allow domain join, Group Policy, LDAP, Kerberos and NTLM 


## Azure AD Features

* enterprise identity solution
* single sign-on
* multi-factor auth (MFA)
* self-service ( password reset, request access to apps, etc...)