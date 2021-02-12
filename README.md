# Arch-builder

before running the arch_setup.bash script we need to partition and mount the drives.
check your drives and partitions using 

    lsblk

make a filesystem and swap partition using

    cfdisk

note : the amount of swap you can assign is entirely up to you but is recommended to be equal to your amount of RAM

less than 2 GB	2 times the amount of RAM

2 GB - 8 GB	Equal to the amount of RAM

8 GB - 64 GB	0.5 times the amount of RAM

more than 64 GB	workload dependent


note that $ represents the partition of swap and % refers to the filesystem's partition

    mkswap /dev/$
    swapon /dev/$
    mkfs.ext4 /dev/%
    mount /dev/% /mnt



## Optional
If you are dualbooting run these commands
this makes a win10 folder so you can access your windows filesystem from linux

    mkdir /mnt/win10

note that $ represents the drive or partition of your windows filesystem

    mount .dev/$ /mnt/win10
