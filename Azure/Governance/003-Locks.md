# Azure Resoruce locks

provide extra layer of protection so it can't be deleted easily

Options
* CanNotDelete
    * authorised users can read and modify but can't del
    * readonly auth users can read but can't update or del


* Lock can be added at RG level (applies to RG and all the resources underneath it)
    * when delete lock is added 
        * deleting RG will fail saying there is lock in place
        * need to delete the lock first before deleting RG

* Lock can be added at Sub level too