# Interface

## Uploading
After having prepped your [CSV file](bulkuploader/inputfile.html), you can now "feed" it to BulkUploader. Click on the upload zone down below to start browsing, or drop your file in there.

## Follow-Up
Once you've provided BulkUploader with your input file, it'll start loading the virtual machines. You'll see that the counters behind "Virtual Machines" will start being populated. The logic used here is that the first number indicates the amount of VMs that were loaded, and the second one the total that should be loaded. The difference between the two numbers should be regarded as the "work in progress" for BulkUploader.

In addtion, you'll see that the same type of number indicators will start being populated for ;
* Compute Cost Per month - Backed by VMchooser
* OS Disks per Month - Backed by DiskChooser
* Data Disks per Month - Backed by DiskChooser

These numbers are in reality your "progress bar" that will allow you to see what work still needs to get done. It's only logical that 10 VMs will be a breeze to process, where 10 million might take a few minutes. ;-)

## Filter
You can use the filter to find any value in the data grid below. The most useful scenario is if you want to do a lookup of a specific VM name or region.

## Live Edit
It is not commonly know. But you can double click on the values in the "Input" column group. 
This is very useful if you want to correct or tweak values after you had prepared your input file. After updating the value, all API calls will be executed again with the updated values.

## Cost Summary
By clicking on "Refresh Summary", BulkUploader will do the "sum" for each cost dimension for you. If you see "NaN", then this means that one (ore more) VMs didn't have an appropriate match.

## Export
The "Export to CSV" button will do exactly as advertised. It'll provide you with a csv export of the values as displayed in the data grid.