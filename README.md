# Moto Core Magisk Module

## DISCLAIMER
- Motorola apps and blobs are owned by Motorola™.
- The MIT license specified here is for the Magisk Module only, not for Motorola apps and blobs.

## Descriptions
- System core framework library of Motorola ROM ported from Motorola XT2125 (nio) as a dependency of any Moto Magisk Modules

## For Moto App Porter
- You need to declare this line bellow in your app AndroidManifest.xml at `<application />` if you want to load classes from this Moto Core:

  `<uses-library android:name="moto" android:required="false" />`

- Do not do above if your app has it's own library!
- Do not white list the library with your own Magisk Module /system/etc/permissions/ because there might be a conflict.

## Sources
- https://dumps.tadiphone.dev/dumps/motorola/nio msi-user-11-RRTS31.Q1-20-24-2-42a7c-release-keys
- libmagiskpolicy.so: Kitsune Mask R6687BB53

## Changelog

v1.3
- Abort installation if fail to mount mirror system

v1.2
- Fix Moto Launcher crashes in Android 15
- Add moto-core_services.jar
- Remove unneeded functions

v1.1
- Add Action button to clear apps caches
- Fix bug in uninstall.sh

v1.0
- Fix bootloop while SUList activated
- In-built files detections

v0.9
- Fix conflict with modules_update while installing via recovery if Magisk installed
- Fix MagiskHide & SUList

v0.8
- Redirect /sdcard to /data/media/"$UID"
- Add optional debug.log=1 for more detailed install log
- Fix MagiskHide & SUList
- Remove coreApp="true" & initOrder="99"

v0.7
- Move uninstall log to /data/media/0/..._uninstall.log
- Fix Android 10 support
- CURRENT_OR_SELF user handle
- Redirect motsettings*.xml to accessible path

v0.6
- Using dex version 035 fix for Android Oreo and bellow
- Fix sepolicy.rule issue in KernelSU
- Save install log at /sdcard/..._recovery.log while installing via Recovery
- Save uninstall log in /data/adb/modules/..._uninstall.log

v0.5
- Remove process="system" that causes bootloop in some devices
- Set blacklist/whitelist

v0.4
- KernelSU support

## Requirements
- Not in Motorola ROM
- Android 6 (SDK 23) and up
- Magisk or Kitsune Mask or KernelSU or Apatch installed

## Installation Guide & Download Link
- If you are using KernelSU, you need to disable Unmount Modules by Default in KernelSU app settings and install https://github.com/KernelSU-Modules-Repo/meta-overlayfs first
- Install this module https://devuploads.com/r0f7r06wb62k via Magisk app or Kitsune Mask app or KernelSU app or Apatch app or Recovery if Magisk or Kitsune Mask installed
- Install any Moto Magisk Module which depends on this module
- Reboot
- If you are using KernelSU, you need to allow superuser list manually all package name listed in package.txt (and your home launcher app also) (enable show system apps) and reboot afterwards

## Optionals
- Global: https://t.me/ryukinotes/35

## Troubleshootings
- Global: https://t.me/ryukinotes/34

## Support & Bug Report
- https://t.me/ryukinotes/54
- If you don't do above, issues will be closed immediately

## Credits and Contributors
- https://t.me/androidryukimodsdiscussions
- You can contribute ideas about this Magisk Module here: https://t.me/androidappsportdevelopment

## Sponsors
- https://t.me/ryukinotes/25


