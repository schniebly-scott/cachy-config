# Resolving Touchpad and Gesture Issues on Linux by Blacklisting `psmouse` Module

Some users experience issues where their touchpad is incorrectly recognized as a generic "PS/2 Mouse," resulting in broken gesture support or overall touchpad failure. This often occurs due to the `psmouse` kernel module being loaded instead of the proper touchpad driver.

This guide outlines how to identify the issue and resolve it by blacklisting the incorrect driver.

## Problem

The touchpad is being misidentified as a generic PS/2 device (`PS/2 Mouse`), which prevents gesture support and proper functionality. Temporarily reloading the `psmouse` module causes the touchpad to work briefly, indicating that `psmouse` is the conflicting module.

## Solution

### 1. Identify the Incorrect Device

Run the following command to inspect your input devices:

```
sudo libinput debug-events

```

Look for a device listed as `"PS/2 Mouse"` or similar that shouldn't be there.

### 2. Determine the Loaded Kernel Module

Use one of the following commands to inspect which modules are associated with your input devices:

```
lsmod | grep mouse

```

or

```
sudo libinput list-devices

```

or

```
sudo dmesg | grep -i input

```

Confirm that `psmouse` is being loaded for your touchpad.

### 3. Test by Reloading the Module

You can test the theory by unloading and reloading the `psmouse` module:

```
sudo modprobe -rv psmouse
sudo modprobe -v psmouse

```

If gesture control works briefly before failing again, `psmouse` is likely interfering.

### 4. Blacklist the `psmouse` Module

To prevent the `psmouse` module from loading at boot:

```
sudo nano /etc/modprobe.d/blacklist.conf

```

Add the following line to the end of the file:

```
blacklist psmouse

```

Save and close the file.

### 5. Reboot

Reboot the system to apply the change:
```
sudo reboot

```

### 6. (Optional) Ensure `xf86-input-synaptics` is Installed

If you're using an Xorg-based environment, ensure the Synaptics driver is installed:

```
sudo pacman -S xf86-input-synaptics # Arch Linux

```

Or install the appropriate package for your distribution.

## Reference

Original forum thread: https://bbs.archlinux.org/viewtopic.php?id=282680
