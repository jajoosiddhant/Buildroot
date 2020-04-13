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

In order to add the hello-world package use make menuconfig, enable the package from external options, run save_config.sh and then build.sh.

In order to optionally download the buildroot contents to a differne directory use BR2_DL option.
To save the linux kernel config file to a specific location, change the path to BR2_LINUX_KERNEL_CUSTOM_CONFIG_FILE in the modified_defconfig file in configs directory or via make menuconfig or using make -C buildroot linux-update-defconfig BR2_LINUX_KERNEL_CUSTOM_CONFIG_FILE = <PATH>.

Adding hello-world package using make-menuconfig
Adding rootfs_overlay using make-menuconfig
Adding dropbear and root password.
Then use save_config.sh to save the changes in base_external


Make sure that you create a configuration file before changing the BR2_LINUX_KERNEL_CUSTOM_CONFIG_FILE etc options. Otherwise, Buildroot will try to access this config file which doesn't exist yet and will fail. You can create the confifuration file by running make linux-menuconfig etc.

Any changes in make_menuconfig must be followed by save_config to reflect in the next build.

