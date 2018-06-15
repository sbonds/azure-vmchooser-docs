# VMoptimizer

VMoptimizer is all about finding the right contract option for you VM.

## Parameters

* **VM Size** : What VM T-Shirt size do you want to do this calculation for.
* **Runtime hours per month** : How many hours per month will you be running this VM?
* **Expected lifetime** : How many months are you planning to run this VM?
* **VM Tier** : The VM Tier used for the VM T-Shirt Size.
* **Region** : The region used for retrieving the pricing.
* **Currency** : The currency used for retrieving the pricing.

## Contract

Depending on the amount of hours a VM will be running, it might be more interesting to go for snoozing or a reserved instance. 
Snoozing is the situation where you only run the VM for the amount of hours per day you actually need it. 
This is a very common patterns with non-production environments. Where running the VM 10 hours per workday (200h for 20days). 
That is less than 1/3th of the cost of running a VM 24x7.
Though if you have a workload that is running 24x7. 
Then Reserved Instances might be a good option for you!

## Windows License

Azure has the advantage where you can leverage the Azure Hybrid Use Benefit. 
Here you can bring your own licenses to Azure. 
When you have long running workloads, then it might be more interesting to go for a license purchase, then use the pay-as-you-go model. 
This might be very contra-intuitive towards the typical cloud motion. 
Though in a lot of financial simulations, this has proven to be exactly the point.