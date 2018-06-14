# How do the filter criteria work?
* If you enter a filter criteria, then it is seen as a requirement! So if you would combine wanting a burstable VM and premium disks, then you will not get any results.
* Sometimes certain criteria are not know for a VM size. For instance, the [GPU Optimized series](https://docs.microsoft.com/en-us/azure/virtual-machines/windows/sizes-gpu) do not show any information on IOPS. If you request an IOPS, then these VMs will not be picked up in the results.


# Compute

| Filter Name | Unit | Description |
| ------ | :--: | ----------: |
| Minimum # Cores | # | The minimum amount of cores that is required for this VM. |
| Minimum Memory | GB | The minimum of memory size that is required for this VM. |
| Minimum performance level | ACU | The minimum of [ACU](https://docs.microsoft.com/en-us/azure/virtual-machines/windows/acu) that is expected for the VM. |


# Storage

| Filter Name | Unit | Description |
| ------ | :--: | ----------: |
| Disk Type | Type | The type of disk you want to use with your VM. |
| Minimum Disk Capacity | GB | What is the minimum disk capacity that the VM should support? This number considers a logical volume where multiple disks might be spanned into one volume to address the capacity need. |
| Minmimum amount of Input Output Operations per Second | IO/s | This is the minimum amount of IO/s (IOPS) a VM should be able to support. |
| Minimum throughput/bandwidth | MB/s | This is the minimum amount of disk throughput the VM should support. |
| Minimum temp disk capacity | GB | The minimum disk size of the temp (/tmp or D:\) drive. |


# Network

| Filter Name | Unit | Description |
| ------ | :--: | ----------: |
| Minimum number of network interface cards | # | The minimum number of NICs a VM should support.  |
| Minimum bandwidth | Mbit/s | The minimum bandwidth (network throughput) that a virtual machine should be able to support. |


# Attributes

| Filter Name | Unit | Description |
| ------ | :--: | ----------: |
| Tier | Tier | The VM tier you want to leverage.  |
| Hyperthreaded | Yes/No/All | Is HyperThreaded wanted? |
| Burstable | Yes/No/All | Should the VM be of the [burstable](https://docs.microsoft.com/en-us/azure/virtual-machines/windows/b-series-burstable) kind? |
| Isolated | Yes/No/All | Do you want a VM that is isolated (dedicated hardware)? |
| Constrained | Yes/No/All | Should the VM be able to reduce the core count to improve licensing cost? |


# SAP

| Filter Name | Unit | Description |
| ------ | :--: | ----------: |
| HANA Support | Yes/No/All | Are HANA workloads certified? |
| SAPS2T | [SAPS](https://www.sap.com/about/benchmark.html) | The minimum number of SAPS of the two tier benchmark |
| SAPS3T | [SAPS](https://www.sap.com/about/benchmark.html) | The minimum number of SAPS of the three tier benchmark |


# Optimize

| Filter Name | Unit | Description |
| ------ | :--: | ----------: |
| Contract | Type | The contract type you want the pricing for. |
| OS | Type | The OS you want PAYG pricing for. Linux will just use the raw VM price. Where windows will include a PAYG license for windows. |
| Peak CPU Usage | 0-100 | This value will be used for rightsizing of the amount of cores. Formule : (Cores * X) / 100 |
| Peak Memory Usage | 0-100 | This value will be used for rightsizing of the amount of cores. Formule : (Memory * X) / 100 |


# Settings

| Filter Name | Unit | Description |
| ------ | :--: | ----------: |
| Region | Region | The Azure region you want to use as scope. |
| Currency | ISO 4217 | The currency used for the returned pricing. |
| Results | # | The amount of results that will be returned. |

