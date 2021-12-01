# App Settings

*Configurtion* ➡️ *Application Settings*

* App settings are variables passed as environment variables to application code
* App settings overrides web.config or appsettings.json
* Can add deployment slot specific settinngs
* Nested Keys like ABC:DEF should be specified as ABC__DEF i.e. : are replaced by __
* settings can be updated in bulk using advance option
* connection strings are special types of settings that are always encrypted
* con strs are recommended for ASP.NET (normal and core)
* for other stacks it is better to avoid con strs and use just app settings
* for non-windows only time con strs are recommended is when it is used for DB backup
