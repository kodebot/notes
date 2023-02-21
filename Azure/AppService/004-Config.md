# App Settings

> *Configuration* ➡️ *Application Settings*

* App settings are variables passed as environment variables to application code
* App settings overrides web.config or appsettings.json
* Can add deployment slot specific settings
* Nested Keys like ABC:DEF should be specified as ABC__DEF i.e. : are replaced by __
* settings can be updated in bulk using advance option
* connection strings are special types of settings that are always encrypted
* con strings are recommended for ASP.NET (normal and core)
* for other stacks it is better to avoid con strs and use just app settings
* for non-windows only time con strs are recommended is when it is used for DB backup

# General Settings

> *Configurtion* ➡️ *General settings*

* Runtime stack settings (e.g. Python, maj ver, min ver)
* Platform settings 
    * bitness (32/64)
    * websocket protocal
    * always on to avoid unloading app after 20 minutes of idle
    * IIS mode - managed/integrated
    * http version
    * ARR affinity - to ensure request from a session in routed to same VM 

* Debugging
* Incoming Client Certs
