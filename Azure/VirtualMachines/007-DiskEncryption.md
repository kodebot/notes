# Disk Encryption

Different from storage encryption from Azure. This is encryption of disks at OS level

* os volume and data disks are encrypted
    * BitLocker for Window
    * DM-Crypt for Linux
* integrates with KeyValult so you can manage the keys
* enable/disable 
    * on VM created from supported Azure Gallery Images
    * on existing VM that run in Azure
    * on new Windows VMs created from pre-encrypted VHD and encrypted keys
    * on Windows VMSS
    * on data drives of Linux VMSS
    * on managed disk VMs
* Bring your own encryption (BYOE) supported
* Bring you own encryption key (BYOK) supported
* ❌ Not supported
    * basic tier VM or VM created using classic method 
    *  disabling encryption on OS drive or data drive of a Linux VM when OS drive is encrypted
    * encrypting OS drive of Linux VMSS
    * encrypting windows VM configured with s/w based RAID systems
    * custom linux image VM
    * integration with on-premises key management
    * Azure Files
    * Network File System (NFS)
    * Dynamic volumes
    * Ephemeral OS Disks

* Prereq
    * Windows
        * 2 GB min
    * Linux data vol only
        * 2 GB min
    * Linux both OS and data
        * 8 GB min
    * Linux both OS and data where root(/) file system usage is > 4GB
        * root file system usage * 2
            * e.g. 16 GB root file system needs 32 GB of RAM
    * Connectivity to Azure AD
    * Connectivity to KeyVault
        * KeyVault enalbed for encryption
    * Connectivity to Azure Storage
    * 

