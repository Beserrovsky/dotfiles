# [Ubuntu Desktop 22.04 LTS](https://ubuntu.com/download/desktop)

Laptop config, great for coding, eletrical engineering and studying.

## Deploy

1. USB Stick

- Plug USB Stick and find it's name
> ```df -h```

- Unmount partition if needed
> ```sudo umount /path/where/mounted```

- [Download ISO](https://ubuntu.com/download/desktop)

- Create bootable USB Stick
> ```sudo dd bs=4M if=/path/to/ISOfile of=/dev/sdx status=progress oflag=sync```

2. OS installation --> Acer Aspire

- On BIOS, disable Secure Boot
- Boot from USB Stick
- Choose your configs, reccomendation: LVM + Disk encrypt
- Install
- Remove USB Stick, go to BIOS, select shimx86 as trusted, call it shim
- Same for grubx86
- Reboot
- Put shim on top of boot priority

3. Welcome

- Update software
> `sudo apt update && sudo apt dist-upgrade -y && sudo apt autoremove`
> `sudo snap refresh`
- Firefox -> Bitwarden
- Login firefox
- ....
