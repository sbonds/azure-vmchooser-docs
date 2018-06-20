# **VMchooser** docs
These docs provide additional insight towards [VMchooser](https://aka.ms/vmchooser) and how to use it.

In the menu above you can find a section per VMchooser module ; 
1. **VMchooser** : Here is where it all started... Do you want to find the best Azure VM-size match, then this is the module you need!
2. **DiskChooser** : Want to know what the most cost efficient disk layout there is for your given set of specifications? 
3. **BulkUploader** : Where VMchooser & DiskChooser are focused on a single search. BulkUploader allows you to find the match for 100s, 1000s, ... of Virtual Machine configuration in one go!
4. **VMoptimizer** : When to go for a certain contract type (PAYG vs Reserved Instances)? Or what about the windows license, does it make sense to go PAYG or is it more interesting to buy a license?

Do you have feedback about these docs? Feel free to file an issue (or do a pull request) at the [underpinning GitHub repository](https://github.com/kvaes/azure-vmchooser-docs/)!


# Where does the data come from?
The data is aggregated from various public sources. In essence the main source of truth is the [Azure Documentation](https://docs.microsoft.com/en-us/azure/virtual-machines/windows/sizes) itself. 
This information is consolidated into [reference data](https://github.com/kvaes/azure-vmchooser-database/tree/master/compute), and that data is combined with the pricing data on a daily basis to keep the database up-to-date.


# GDPR
The only data VMchooser stores is the following ;
* Application Insights tracks the usage of the APIs and stores this data for 30 days.
* The name of you virtual machine is not used in any API.
All is forgotten after 30 days.

