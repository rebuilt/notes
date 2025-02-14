curl https://cheat.sh/udisksctl

 cheat.sheets:udisksctl 
# udisksctl
# The udisks command line tool

# Output low-level information for the provided block device and partition.
udisksctl info -b /dev/sdd1

# Mount partition on the given block device. This will by default use
# '/media', and on typical systems won't even require root privileges.
udisksctl mount -b /dev/sd??

# Set up a loop device using 'imagefile'. This only sets it up, so you will
# probably also want to mount it thereafter, using the device given to you
# after executing this command. often, if not always, this is '/dev/loopX', -
# where X is the loop device number.
udisksctl loop-setup -f image file

# Like the above, except this will delete the loop device (assuming 'loop0' was
# previously created) but note that this will NOT delete the image file. Be
# sure to unmount the filesystem(s) on the device first, before deleting it.
udisksctl loop-delete -b /dev/loop0

# Power off block device. May not work for all devices, and may vary in effect.
udisksctl power-off -b /dev/sdb

# Example of a suitable mount request for auto-mounting at startup. Useful if
# fstab isn't playing nice. This also demonstrates using `mount`-style options.
udisksctl mount --no-user-interaction --options noatime -b /dev/sde1

# In some distributions of Linux, such as an Ubuntu 18.04 base install, will
# not have its policies set to allow regular users to mount filesystems with
# udisksctl(1) without root access, despite that being the point of this tool.
# This can be resolved by updating the policies to this effect. In Ubuntu 18.04
# it's as easy as a simple package installation procedure.
sudo apt-get install policykit-desktop-privileges

 cheat:udisksctl 
# To get info about a device:
udisksctl info -b <device>

# To mount a device:
udisksctl mount --block-device <device>

# To unmount a device:
udisksctl unmount --block-device <device>

# To get help:
udisksctl help 

 tldr:udisksctl 
# udisksctl
# A command-line program used to interact with the udisksd daemon process.
# More information: <http://storaged.org/doc/udisks2-api/latest/udisksctl.1.html>.

# Show high-level information about disk drives and block devices:
udisksctl status

# Show detailed information about a device:
udisksctl info --block-device /dev/sdX

# Show detailed information about a device partition:
udisksctl info --block-device /dev/sdXN

# Mount a device partition and prints the mount point:
udisksctl mount --block-device /dev/sdXN

# Unmount a device partition:
udisksctl unmount --block-device /dev/sdXN

# Monitor the daemon for events:
udisksctl monitor

