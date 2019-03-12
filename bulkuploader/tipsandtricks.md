# Tips & Tricks

* Be aware that VMoptimizer starts from the VM Size that was found from your requirements. This means that if you (for example) started with a PAYG contract, you might get an A-series machine. As these are not available in Reserved Instances, you'll notice that those fields are empty. Same goes the other way around, if you start with filtering on "Reserved Instances", you might not find A or G-series...
  ** TIP : Run your input file two times. Once with PAYG and once with a reserved instances contract form.
* Start without being too restrictive. My personal tendency is to provide 0 (or 1) with all values where I have no specific requirement. And tweak accordingly afterwards... Otherwise you'll soon find out that you were missing a VM size that you would have expected to be in there.
* Do note that there are impossible combinations. If you select burstable and SAP, then you know you won't get any results...
* If you do not care about the region, then try out a few regions... You might find cost optimizations by doing this. A common example here is that North Europe is a tad cheaper than West Europe.
* Use VMoptimizer to find the sweet spots to either go PAYG or buy your windows license (AHUB!). But also to see if snoozing would out perform reserved instances in terms of costs.

# Gothas

* BulkUploader will assume that 
  * if the OS disk is bigger than the requested data disk size, the data can be stored on the OS disk
