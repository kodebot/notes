# Role Based Access Control (RBAC)

* AD contains users, app, groups, etc...
* We assigne these to a role


Role includes one or more `Action` and `NotAction`
    * write enable PUT, POST, PATCH and DELETE
    * read enables get


buit-in roles
* owner
    * full access
    * right to delegate access to others
* contributer
    * full access
    * ⬇️ can't grant access to others
* reader
    * readonly access
* other roles
    * APIM Service contributor
    * APIM servie Operator
    * APIM mangement Reader
    * Backup Contributor
    * Back Operator
    * Backup Reader
    * and many others

[more](https://docs.microsoft.com/en-us/azure/role-based-access-control/built-in-roles)

Get latest roles using PS command

```ps1
Get-AzureRMRoleDefinition
```

* custom roles can be created
    * a tenant can have max of 2000 roles
    * when creating a role can be scoped to 
        * Sub, 
        * RG 
        * individual resources if needed


example custom role json

```json
{
    "Name": "Kodebot VM Manager",
    "Description": "Can manage VMs",
    "Actions":[
        "Microsoft.Storage/*/read",
        "Microsoft.Network/*/read",
        "Microsoft.Compute/*/read",
        "Microsfot.Compute/VirtualMachines/start/action"
        "Microsfot.Compute/VirtualMachines/restart/action"
        "Microsoft.Authorization/*/read",
        "Microsfot.Resources/subscriptions/resourceGroups/read"
    ]
}
```