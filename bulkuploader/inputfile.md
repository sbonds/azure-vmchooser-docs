# Input File

At the top of the BulkUploader you can see [a link to the "Sample CSC File"](http://vmchooser.com/vmchooser.csv) that you can use as a starting template.


# Columns
The CSV file will contain the following columns 

| Filter Name | Mandatory | Allowed Values | Description |
| ------ | :--: | ----------: |
| VM Name  | Yes | Free format | This is so that you can identity the VM. This information is not sent to any API. |
| Region | Yes | [Slug field from GetRegions](https://vmchooser.azure-api.net/dev-v2/api/GetRegions) | The region where you want to deploy the VM. |
| Cores | Yes | 0 to ... | What is the minimum # of cores you need. |
| Memory (GB) | Yes | 0 to ... | What is the minimum # of memory (in GB!) you need. |
| SSD [Yes/No] | Yes | Yes/No/All | Should the machine be SSD capable? Either restrict via "Yes" or "No", or just say "All" if you want all possible options. |
| NICs | Yes | 0 to ... | The minimum # of NICs you need. |
| Max Disk Size (TB) | Yes | 0 to ... | The minimum size of your data volume (in TB!). If you want a disk of 32GB, you select 0.032 as the required minimum value. |
| IOPS | Yes | 0 to ... | The minimum # of IOPS you need from your VM. |
| Throughput (MB/s) | Yes | 0 to ... | The minium # of throughput (in MB/s) you need from your VM. |
| Min Temp Disk Size (GB) | Yes | 0 to ... | The minium temp disk size (in GB). |
| Peak CPU Usage (%) | Yes | 0-100 | The ability to rightsize your CPU.  Formule : (Cores * X) / 100  |
| Peak Memory Usage (%) | Yes | 0-100 | The ability to rightsize your Memory.  Formule : (Memory * X) / 100  |
| Currency | Yes | EUR/USD/... | Select the currency for the pricing. |
| Contract | Yes | PAYG/RI1Y/RI3Y | Select the contract form you want. |
| OS | No | linux/windows/sql-standard/sql-enterprise | Select to included OS you want. |
| Burstable | Yes | Yes/No/All | Should the VM be burstable? Either restrict via "Yes" or "No", or just say "All" if you want all possible options. |
| SAPHANA | No | Yes or All | Does the VM need to support SAP HANA? Note : Putting anything else than Yes will revert back to All.|
| SAPS2T | No | -127 to ... or Empty | Filter on the known 2-tier SAPS benchmark results, where the value is the minimum you require. |
| SAPS3T | No | -127 to ... or Empty | Filter on the known 2-tier SAPS benchmark results, where the value is the minimum you require. |
| SISLA | No | Yes/No | Do you need a Single Instance SLA for this machine? If yes, then Premium disks will be used for the OS and the data volume. |
| OVERRIDEDISKTYPE | No | All/premiumssd/standardssd/standardhdd | Do you want to force a given disk type? Note : If you select SISLA as Yes, then this value will be ignored. |
| OSDISK | No | 0 to ... | Do you want to specify the OS disk size (in GB)?|
| GPU | Yes | Yes/No/All | Should the VM support GPUs? Either restrict via "Yes" or "No", or just say "All" if you want all possible options. |
| INFINIBAND | Yes | Yes/No/All | Should the VM be backed by Infiniband? Either restrict via "Yes" or "No", or just say "All" if you want all possible options. |


# Common Errors
* When using a vCenter export, the memory stated is in MB and not in GB. (Here BulkUploader will prompt you with a pop-up to state that it intervened/changed the value accordingly.)
* Don't be too restrictive! Options are great, but that does not mean that you need to be specific for every column.
  * Example : Asking for an SSD capable machine that should not be burstable will not render any results.
* CSV stands for "comma-seperated values". So the values should be seperated by commas. Again, due to the fact that this was a common error, BulkUploader auto-detects the seperator.
 