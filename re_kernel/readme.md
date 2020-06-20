# RE Kernel

Goal: Make device not reboot every 6 minutes

## How to

## Kernel Symbol table

Kernel symbols achieved using [this method](https://forum.xda-developers.com/android/software-hacking/how-to-reverse-engineer-kernel-t3137384):

``` bash
echo 0 > /proc/sys/kernel/kptr_restrict
cat /proc/kallsyms >/cache/symbols.txt
```

### Kernel (self decompress xz)
``` bash
dd if=../initram/zImage bs=512 skip=1 of=zImage
```

### Split Kernel decompressor and vmlinux.xz

``` bash
OFFSET=$(grep -abo  $'\3757zXZ\000' zImage | tail -n 1 | cut -d ':' -f1)
echo $OFFSET
15156
dd if=zImage bs=$OFFSET count=1 of=decompressor
dd if=zImage bs=$OFFSET skip=1 of=vmlinuz.xz
unxz < vmlinuz.xz > vmlinuz

```
