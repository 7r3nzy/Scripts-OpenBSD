#create 20G hdd

qemu-img create -f qcow2 win7.hd 20G

#boot from cd with 2Gb ram

qemu-system-x86_64  -m 2048 -cdrom /dev/cd0a -boot d -monitor stdio win7.hd

#to resize win7.hd

qemu-img resize win7.hd [+|-]size

