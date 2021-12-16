# Azure Backup

* designed to replace any exisiting on-premises or off-site backup solution
* when backup job initiated by Azure Backup Service
    * the service triggers point-in-time snapshot using backup extension installed on VM
        * VMSnapshot extension in Windows
        * VMSnapshotLinux extension in Linux
    * extensions are installed during the first VM backup if the VM is running
* if VM is not running 
    * the backup service will take snapshot of the underlying storage of the VM

