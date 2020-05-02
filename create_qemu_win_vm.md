# create 20G hdd
```bash
qemu-img create -f qcow2 win7.hd 20G
```
# boot from cd with 2Gb ram
```bash
qemu-system-x86_64  -m 2048 -cdrom /dev/cd0a -boot d -monitor stdio win7.hd
```
# to resize win7.hd
```bash
qemu-img resize win7.hd [+|-]size
```
# for host port to guest ssh port

```bash
qemu-system-x86_64 -nic hostfwd=tcp::2222-:22
```

