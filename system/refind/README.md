# Refind

## Configuration

Edit `/boot/EFI/refind/refind.conf`

```conf
timeout 0
use_nvram false
hideui hints
use_graphics_for osx,linux,windows

menuentry "Arch Linux" {
    icon     /EFI/refind/icons/os_arch.png
    volume   "Arch Linux"
    loader   /vmlinuz-linux
    initrd   /initramfs-linux.img
    options  "cryptdevice=UUID=SOMEUUID:cryptroot root=/dev/mapper/cryptroot rootflags=subvol=@ rw quiet"

    submenuentry "Boot using fallback initramfs" {
        initrd /initramfs-linux-fallback.img
    }
    submenuentry "Boot to terminal" {
        add_options "systemd.unit=multi-user.target"
    }
}
```

Hide automatic entry by using `-` and confirm it

## Theme

Check the [darkmini](https://github.com/LightAir/darkmini)

```sh
sudo mkdir -p /boot/EFI/refind/themes

sudo git clone https://github.com/LightAir/darkmini.git
```

Edit `/boot/EFI/refind/refind.conf` and add `include themes/darkmini/theme.conf` at the end of the file

To select between backgrounds edit the `banner` variable on `darkmini/theme.conf` or `darkmini/theme-mini.conf`

Replace the icon variable of the custom entry on `/boot/EFI/refind/refind.conf`

```conf
icon     /EFI/refind/themes/darkmini/icons/os_arch.png
```
