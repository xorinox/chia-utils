#!/bin/bash
# Michel Erb (xorinox@gmx.ch)
# wake-up-hdd.sh that keeps hard drives containing Chia plots spinning
# Expects hard drives to be configured for mounting via /etc/fstab
# Scheduled via Cron to run every 2 minutes:   */2 * * * * /usr/bin/flock -n /tmp/wake-up-hdd.lock /chia-utils/runtime/wake-up-hdd.sh

plot_disks="/chia/plots/disk*"

for plot_disk in $plot_disks; do
  if /bin/lsblk |/usr/bin/grep "$plot_disk" 1> /dev/null; then
    # grab a random plot file from plot disk
    plot_file=$(/usr/bin/find "$plot_disk" -iname "plot-k*.plot" |/usr/bin/sort -R |head -1)
    if [ -f "$plot_file" ]; then
      # read a random byte sequence
      echo $((16#$(/usr/bin/xxd -p -l1 -s $RANDOM "$plot_file")))
    fi
  else
    # the next line work, if entry for disk in /etc/fstab missing, we dont need to read anything from this disk, as mounting it woke it up also 
    if /usr/bin/grep "$plot_disk" /etc/fstab 1> /dev/null; then  
      mount "$plot_disk"
      echo "...info:  mounted $plot_disk"
    fi
  fi
done