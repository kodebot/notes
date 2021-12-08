# Desired State Config Management

Once VM is created, some settings need to applied/adjusted to reach desired state

Easy way to think of this is that this is the config we do inside the VM as opposed to outside (generally done by DevOps)

Supported Extensions
* puppet - enterprise grade
* CHEF - enterprice grade
* Powershell (DSC) - simple and easy to use, reco for small scale

Powershell DSC config can be ported to puppet or CHEF

## Powershell DSC

Three major components
* configuration - declartive powershell config
* resources - 
* logical config manager - engine behind Powershell DSC

example

``` iis.ps1
Configuration KodebotWebsite # Cofig name
{
    Note 'localhost' # target
    {
        # Install IIS - enable via window feature
        WindowsFeature IIS
        {
            Ensure="Present"
            Name="Web-Server"
        }

        # Install ASP.NET 4.5
        WindowsFeature ASP
        {
            Ensure="Present"
            Name="Web-Asp-Net45"
        }
    }
}

```

prep

```
    Publish-AzureRmVMDscConfiguration `
    -ConfigurationPath .\iis.ps1 -OutputArchivePath .\installiis.zip
```