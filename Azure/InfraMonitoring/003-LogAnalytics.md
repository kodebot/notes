# Log Analytics

You create a workspace to connect datasources and do something with it
    * i.e. VM can be conneted to workspace to send log
        * it basically installs an agent to send logs
    * once connected, you can choose what logs to include in the workspace
        * System Events
        * App logs, etc..

Can be used to collect activity logs too at sub level or more granular level

It is chargeable service (Per GB pricing Tier)

Key features
* Central Role in monitoring
* Data soruces
    * can plug-in many sources like VM, etc..
* Other Log Analytics Sources
    * can plug-in Security center, App Insights, etc..
* Search Queries
* Several Output Options

## Use Case

![image log analytics use cases](./img/log-analytics-use-cases.png)

## Architecture

![image log analytics architecture](./img/log-analytics-arch.png)

* Solutions can be third party (Marketplace available) 

* Some datasources
    * Custom Logs - <LogName>_CL
    * Event Logs  - Event
    * Win Perf Counter - Perf
    * Linux Perf Counter - Perf
    * IIS Logs - W3CIISLog
    * Syslog - Syslog



## Search query fundamentals

Kusto Query Language (kql)

* start with source table (i.e. Event)
* follow with a series of operators
* separate additional operations using pipe |
* join other tables and workspaces using `union` (can query across qork spaces)


example queries

* see Perf logs

``` kql
perf
```

