# Buildroot
Embedded Linux Platform while using cross-compilation to allow building for multiple target platforms on a single Linux-based development system.


Add ssh link to setup ssh key
Using 2019.05.x as the branch on https://git.busybox.net/buildroot/

base_external/external.desc describes the name of the external tree.

add script to install dependencies for buildroot and qemu.
Optional step for faster builds.
Reference all the links from the assignment document here.
Reference the buildroot link here.
Reference Daniel Walkes.

Create a wiki page for all the steps taken



steps if no config file exists in base_external
./build.sh
./save_config.sh
./build.sh -> to build from the base_external/configs folder
These above three commands would build a basic image with the default defconfig file as specified in shared.sh without adding the hello-world package, without setting root as password and without including the dropbear package for ssh/scp.

In order to add the hello-world package use make menuconfig, enable the package, run save_config.sh and then build.sh.

