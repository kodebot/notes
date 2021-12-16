# Azure Backup

* designed to replace any exisiting on-premises or off-site backup solution
* when backup job initiated by Azure Backup Service
    * if VM is ruuning
        * the service triggers point-in-time snapshot using backup extension installed on VM
            * VMSnapshot extension in Windows
            * VMSnapshotLinux extension in Linux
        * extensions are installed during the first VM backup if the VM is running
    * if VM is not running 
        * the backup service will take snapshot of the underlying storage of the VM

* for consistency
    * Azure Backup Service coordidate with Volume Shadow Copy Service (VSS) in Windows
    * In Linux custom scripts can be used to ensure consistency

* after taking the snapshot, Azure backup service transfers data to the vault
    * only sends the changed data since last backup

* once data is transferred to the vault
    * snapshot is removed
    * recovery point is created

* backup traffic is encrypted using Advanced Encryption Standard (AES) 256

* backup data at rest is also encrypted

# Components

there are several backup components availble depending on what is being backed up

* Recovery Services Vault
    * prepare to host backup
    * then create and deploy backup policies
    * now backups can begin 





