# Azure AD Identity Protection

protects against attacks ( need P2 license)

* majority of attacks take place when user account is compromised
* available for all AD pricing tiers
* report alerts are generated based on adaptive ML algo


## Capabilities
* detect
* investigate (with contextual info)
* risk based conditional access policy
    * policy to mititgate risk signin
    * policy to block or secure risky accounts
    * policy to requrie MFA


## Identity Protection Roles (out of the box)

* Global Admin
    * full access to ID protection
    * onboard identity protection

* security admin
    * full access to ID protection
    * ⬇️ can't onboard, reset password for user

* security reader
    * readonly access to ID protetion
    * ⬇️ can't onboard, remediate users, configure policies and reset pwd

## Conditional access policies

* define named locaitons to access
* terms of use - make user to accept terms of use

* there are some base line policies
    * for example - policy : Required MFA for admins require MFA for following roles
        * Global Admin
        * Exchange Admin
        * Conditional Access Admin
        * etc...

* What If panel to see what happens when user login user certiain conditions