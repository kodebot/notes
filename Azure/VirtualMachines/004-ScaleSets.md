# VM Scale Set (VMSS)

*Scale Horizontally*


* decide number of instances and the size you wish to run
* determine if you want to auto-scale

* max 1000 VM instances for Azure supplied VM images
* max 600 for custom images

## Auto-scale

* min and max instances
* scale out based on metrics (infrastructure and application metrics)
* scale out based on schedule
* when scale in - make sure existing user sessions are not abandoned

Need to have min of 2 at least for availability


## Manual Group of VMs vs VMSS

| Scenario | Manual Group | VMSS |
|--         |--             |--     |
|add new | manually create| automatically create from central config|
|traffic balacnce 
and distribution
