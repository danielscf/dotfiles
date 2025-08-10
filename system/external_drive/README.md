# External drive

## Mount Manually

1. Create directory

```sh
sudo mkdir -p /mnt/external
```

2. Identify external drive UUID using `lsblk -f`

```sh
NAME          FSTYPE      FSVER LABEL    UUID                                 FSAVAIL FSUSE% MOUNTPOINTS
sdb
└─sdb1        ntfs              EXTERNAL 68A8D5B3A8D5804C                        267G    86% /run/media/daniel/EXTERNAL
```

3. Add the drive using `sudoedit /etc/fstab`

```fstab
# External drive
UUID=68A8D5B3A8D5804C  /mnt/external  ntfs3  nofail,x-systemd.device-timeout=1ms,uid=1000,gid=1000,umask=0022  0  0
```

## Link Music

```sh
mkdir -p ~/Music/tracks
ln -s /mnt/external/Media/Music/* ~/Music/tracks/
```
