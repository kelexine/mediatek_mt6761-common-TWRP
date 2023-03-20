# TWRP Common device tree for Mediatek MT6761 devices
- [x] Still testing but works on my Tecno Spark 8C ddvicd

```
#
# Copyright (C) 2022 TeamWin Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#
```
# Working features so far

## Blocking checks
- [X] Correct screen/recovery size
- [X] Working Touch, screen
- [X] Working slot switching
- [X] Backup to internal/microSD
- [X] Restore from internal/microSD
- [X] reboot to system
- [X] ADB

## Medium checks
- [X] update.zip sideload
- [X] UI colors (red/blue inversions)
- [X] Screen goes off and on
- [X] F2FS/EXT4 Support, exFAT/NTFS where supported
- [X] all important partitions listed in mount/backup lists
- [X] backup/restore to/from external (USB-OTG) storage
- [X] backup/restore to/from adb (https://gerrit.omnirom.org/#/c/15943/)
- [ ] decrypt /data
- [X] Correct date

## Minor checks
- [X] MTP export
- [X] reboot to bootloader
- [X] reboot to recovery
- [X] poweroff
- [X] battery level
- [X] temperature
- [ ] encrypted backups (no option)
- [X] input devices via USB (USB-OTG) - keyboard, mouse and disks
- [ ] USB mass storage export (Unable to test)
- [X] set brightness
- [X] vibrate
- [X] screenshot
- [X] partition SD card
