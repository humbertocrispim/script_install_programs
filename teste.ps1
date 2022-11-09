Get-WmiObject -Class Win32_Product
	
Get-WmiObject -Class Win32_Product -Filter "Name = 'VMware Horizon Client'"

$application = Get-WmiObject -Class Win32_Product -Filter "Name = 'VMware Horizon Client'"


IdentifyingNumber : {C8088F15-0D42-4A3A-9434-404153244125}
Name              : VMware Horizon Client
Vendor            : VMware, Inc.
Version           : 8.7.0.31805
Caption           : VMware Horizon Client