mv /lib/modules/`uname -r`/kernel/drivers/usb/storage/usb-storage.ko /lib/modules/`uname -r`/kernel/drivers/usb/storage/usb-storage.ko.blacklist
chmod 444 /media/
chmod 444 /usr/lib/gvfs/gvfsd-mtp
chmod 444 /usr/lib/gvfs/gvfsd-gphoto2
chmod 444 /usr/lib/gvfs/gvfs-gphoto2-volume-monitor
chmod 444 /usr/lib/gvfs/gvfs-mtp-volume-monitor