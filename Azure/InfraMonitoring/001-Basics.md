# Azure Monitoring

Available Under Monitor blade or Monitoring section of individual supported resources

How it works in Azure?

* Monitor and Visualize Metrics
* Query and Analyze logs (Log Analytics)
    * from varity of sources
* Setup & Alert Actions
    * conditional notifications and actions like shutdown VM, etc..

## Metrics

* choose sub(s)
* choose rg
* choose resource (this and above prefilled when accessed from a resource like VM)
* then you will see metrics applicable to the resoruce
* change the aggregation as needed (sum, max, avg, etc..)
* change the visualisation as needed like line, bar, etc..
* chage the time range as needed
* can pin to dashboard 



## Alert

* choose resource (VM)
* choose condition (CPU usage > 90%)
* setup action groups (more than one allowed)
    * group name and type, type defines how to notify (more than one allowed)
        * Email/SMS/Push/Voice
        * Azure Function
        * Logic App
        * Webhook
        * ITSM (create indident ticket using ITSM connector)
        * Automation Runbook
            * there are predefiend runbooks like
                * restart vm
                * stop vm
                * scale up or down
                * remove

## Diagnostic logging (VM)

Azure monitoring collects host level settings by default - 
* this is what Azure can observe from Hypervisor things like 
    * disk usage 
    * cpu usage, etc...


