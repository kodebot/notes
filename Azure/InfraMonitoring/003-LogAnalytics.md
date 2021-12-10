# Log Analytics

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

* start with source table (i.e. Event)
* follow with a series of operators
* separate additional operations using pipe |
* join other tables and workspaces using `union`