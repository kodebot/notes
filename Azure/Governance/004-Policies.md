# Azure Policies

* Enforce Governance
* Buit-in or custom
* assigned to management group, sub or rg

create policy ➡️ then assign

## create

* use `Policies` under Settings of RG(or similar), you will see the follwowing options
    * Assign Policy
    * Assign Initiative ( just a group of policies to achieve a goal)

Before assigning, a policy must exist, there are built-in policies, custom can be created

when assigning policy, it affects only the new resurces, existing ones need to updated using remediation task

Policies are listed under `Definitions`

policies are create using JSON

example

```json
{
  "properties": {
    "displayName": "Allowed locations",
    "policyType": "BuiltIn",
    "mode": "Indexed",
    "description": "This policy enables you to restrict the locations your organization can specify when deploying resources. Use to enforce your geo-compliance requirements. Excludes resource groups, Microsoft.AzureActiveDirectory/b2cDirectories, and resources that use the 'global' region.",
    "metadata": {
      "version": "1.0.0",
      "category": "General"
    },
    "parameters": {
      "listOfAllowedLocations": {
        "type": "Array",
        "metadata": {
          "description": "The list of locations that can be specified when deploying resources.",
          "strongType": "location",
          "displayName": "Allowed locations"
        }
      }
    },
    "policyRule": {
      "if": {
        "allOf": [
          {
            "field": "location",
            "notIn": "[parameters('listOfAllowedLocations')]"
          },
          {
            "field": "location",
            "notEquals": "global"
          },
          {
            "field": "type",
            "notEquals": "Microsoft.AzureActiveDirectory/b2cDirectories"
          }
        ]
      },
      "then": {
        "effect": "deny"
      }
    }
  },
  "id": "/providers/Microsoft.Authorization/policyDefinitions/e56962a6-4747-49cd-b67b-bf8b01975c4c",
  "type": "Microsoft.Authorization/policyDefinitions",
  "name": "e56962a6-4747-49cd-b67b-bf8b01975c4c"
}
```


