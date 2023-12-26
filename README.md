# Moto Core Magisk Module

## DISCLAIMER
- Motorola apps and blobs are owned by Motorola™.
- The MIT license specified here is for the Magisk Module only, not for Motorola apps and blobs.

## Descriptions
- System core framework library of Motorola ROM ported from Motorola XT2125 (nio) as a dependency of any Moto Magisk Module

## For Moto App Porter
- You can declare this line bellow in your app AndroidManifest.xml after `<application />` if you want to load classes from this Moto Core:

  `<uses-library android:name="moto" android:required="false" />`

- Do not do above if your app have it's own library!
- Do not white list the library with your own Magisk Module /system/etc/permissions/ because there might be a conflict.

## Sources
- https://dumps.tadiphone.dev/dumps/motorola/nio msi-user-11-RRTS31.Q1-20-24-2-42a7c-release-keys

## Requirements
- Not in Motorola ROM
- Android 6 and up
- Magisk or KernelSU installed

## Installation Guide & Download Link
- Install this module https://www.pling.com/p/1978575/ via Magisk app or KernelSU app or Recovery if Magisk installed
- Install any Moto Magisk Module which depends on this module
- Reboot
- If you are using KernelSU, you need to allow superuser list manually all package name listed in package.txt (and your home launcher app also) (enable show system apps) and reboot after

## Optionals
- Global: https://t.me/androidryukimodsdiscussions/60861

## Troubleshootings
- Global: https://t.me/androidryukimodsdiscussions/29836

## Support & Bug Report
- https://t.me/androidryukimodsdiscussions/2618
- If you don't do above, issues will be closed immediately

## Tested on
- Android 12.1 Nusantara ROM
- Android 13 Nusantara ROM, AOSP ROM, & CrDroid ROM

## Credits and contributors
- https://t.me/androidryukimodsdiscussions
- You can contribute ideas about this Magisk Module here: https://t.me/androidappsportdevelopment

## Thanks for Donations
This Magisk Module is always will be free but you can however show us that you are care by making a donations:
- https://ko-fi.com/reiryuki
- https://www.paypal.me/reiryuki
- https://t.me/androidryukimodsdiscussions/2619


