#!/bin/bash
echo "RUNNING common/low-power-shutdown.sh"
# This reduces power consumption when off by 140x down to ~0.01 W. However, you need to flash the eeprom so it's pretty sketchy

# Save current eeprom config to a tmp file
rpi-eeprom-config > /tmp/eeprom.txt

# Change POWER_OFF_ON_HALT to 1 as documented here: https://www.raspberrypi.com/documentation/computers/raspberry-pi.html#decrease-raspberry-pi-5-wattage-when-turned-off
sed -i 's/^POWER_OFF_ON_HALT=.*/POWER_OFF_ON_HALT=1/' /tmp/eeprom.txt

# Generate the eeprom binary
rpi-eeprom-config --config /tmp/eeprom.txt --out /tmp/eeprom.bin /lib/firmware/raspberrypi/bootloader-2712/default/pieeprom*.bin

# Flash eeprom binary
sudo rpi-eeprom-update -d -f /tmp/eeprom.bin

