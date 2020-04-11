#!/bin/sh
# Shared definitions for buildroot scripts

# The defconfig from the buildroot directory we use for qemu builds
QEMU_DEFCONFIG=configs/qemu_aarch64_virt_defconfig
# The place we store customizations to the qemu configuration
MODIFIED_QEMU_DEFCONFIG=base_external/configs/modified_qemu_aarch64_defconfig
# The defconfig from the buildroot directory we use for the project
DEFAULT_DEFCONFIG=${QEMU_DEFCONFIG}
MODIFIED_DEFCONFIG=${MODIFIED_QEMU_DEFCONFIG}
MODIFIED_DEFCONFIG_REL_BUILDROOT=../${MODIFIED_DEFCONFIG}
