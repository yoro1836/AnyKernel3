### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=ZeroX Kernel For Galaxy S22 Series (Qualcomm) by Yoro1836
do.devicecheck=0
do.modules=0
do.systemless=0
do.cleanup=1
do.cleanuponabort=0
device.name1=
device.name2=
device.name3=
device.name4=
device.name5=
supported.versions=
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties


### AnyKernel install
## boot shell variables
block=boot
is_slot_device=auto
ramdisk_compression=auto
patch_vbmeta_flag=auto
no_magisk_check=1

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh

ui_print " ______            __   __"
ui_print "|___  /            \ \ / /"
ui_print "   / / ___ _ __ ___ \ V / "
ui_print "  / / / _ \ '__/ _ \ > <  "
ui_print " / /_|  __/ | | (_) / . \ "
ui_print "/_____\___|_|  \___/_/ \_\\"


# boot install
split_boot
if [ -f "split_img/ramdisk.cpio" ]; then
    unpack_ramdisk
    write_boot
else
    flash_boot
fi
## end boot install
