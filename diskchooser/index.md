# DiskChooser

DiskChooser let's you find the most cost efficient disk layout for your requirements.

## Parameters

* **Minmimum capacity** : The minimum of netto disk space that is needed (in GB)
* **Minimum amount of Input Output Operations per Second** : The minimum amount of IOPS needed for the configuration.
* **Minimum throughput/bandwidth** : The amount of throughput (in MB/s) that is needed for this configuration.
* **Maximum amount of disks used** : The maximum disks used for this configuration. This is typically the max disk limit of your VM.
* **Disk Type** : The disk type... Premium SSD, Standard SSD or Standard HDD.
* **Disk Class** : The disk class... SSD or HDD. If the type is selected, then the class will be ignored.

## Disks Configuration

For the disk configuration the assumption is taken that these disks will be used to create one single volume of "striped" (raid0) disks. 
This will then combine the individual capacity / throughput / IOPS of the disks into one volume. 
Be aware that the most optimal situation for any disk performance is typically achieved by parallelizing the workload into a lot of threads. 
