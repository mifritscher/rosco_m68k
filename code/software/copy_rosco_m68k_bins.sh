#! /bin/bash
if [ -z "$1" ]
  then
    echo
    echo "Copies all rosco_m68k software examples (like to an SD card)".
    echo "       copy_rosco_m68k_bins.sh <target_path>"
    echo "E.g.:  copy_rosco_m68k_bins.sh /Volumes/ROSCO_SD"
    echo
    echo "NOTE: You must make sure the media is mounted before running this script"
    echo "      and also make sure to unmount media safely after files are copied!"
    exit
fi
echo "=== Copying rosco_m68k software examples -> $1"
echo
cp -v sdfat_menu/ROSCODE1.BIN "$1"
cp -v 2dmaze/2dmaze.bin "$1"
cp -v adventure/adventure.bin "$1"
cp -v dhrystone/dhrystone.bin "$1"
cp -v easy68k-demo/easy68k-demo.bin "$1"
cp -v ehbasic/ehbasic.bin "$1"
cp -v gpio-interrupt/gpio-interrupt.bin "$1"
cp -v gpiodemo/gpiodemo.bin "$1"
cp -v lcd-ili9341/lcd-ili9341.bin "$1"
cp -v libm-test/libm-test.bin "$1"
cp -v life/life.bin "$1"
cp -v memcheck/memcheck.bin "$1"
cp -v sdfat_demo/sdfat_demo.bin "$1"
cp -v updateflash/updateflash.bin "$1"
cp -v vterm/vterm.bin "$1"

echo
echo "NOTE: Remember to safely unmount $1 (if needed)."
