# Preparing an Elastic Stack Virtual Machine

## Requirements

* Basic understanding of Linux
* Directory structure
* Use the bash command line
* How the disk partitions work

## Verifying available disks

Before starting to prepare a virtual machine it is necessary to check information about disks.  

`sudo fdisk -l`

This is the disk (/dev/sdc) which will be initialized, formatted and mounted for Elasticsearch.

## Preparing partition  

`sudo fdisk /dev/sdc`  

> In your case, it might be a different partition.  
> Examples: sdd, sde

Typing `m` will show help for available options.  

Typing `p` will show partitions information.  
 
Typing `n` will create a new partition. 

Type `p` for primary and choose **1** for only one partition.  

`<enter>` for default first sector

`<enter>` for default Last sector 

After creating this new partition, type `w` to write on disk and exit from fdisk.

## Formatting disk

`sudo mkfs.ext4 /dev/sdc`  

## Creating Elastic folder

`sudo mkdir /var/opt/elastic`

## Mounting disk in Elastic folder

`sudo mount /dev/sdc /var/opt/elastic`

## Keeping disk mounted after boot

In order to keep the disk mounted after reboot, it is necessary to edit fstab.

`sudo nano /etc/fstab`

Add these instructions to the end of the file.

`/dev/sdc    /var/opt/elastic    ext4    defaults    0    0 `

To save everything press `CTRL+X` to exit Nano, and then choose `save changes`.

## Check if the disk is OK.

`sudo df -h`

You should see all mounted disks.






