# BulkUploader

The objective of BulkUploader is to reduce the time needed to do cost estimates for an environment on Azure. 
If you would need to calculate the price of a landscape of 10 to 10 million VMs, the effort needed with BulkUploaded will be limited to preparing the input file and letting it being processed.

Here you start with preparing a CSV-file that contains the landscape you want to have a cost estimate for. Each line will represent a VM, where you can finetune the typical requirements of this VM.

As a result, you'll get info from all the relevant VMchooser modules ;
* **VMchooser** : the best match will be found
* **DiskChooser**
  * The **OS disk** will be provided accordingly to the disk type
  * The best config for the **data disks** will calculated (if needed).
* **VMoptimizer** : for the best match, you'll be provided with all contract options 
* **Backup Sizing** : get insights in the Azure backup costs
