#!/bin/bash


# This script clones a virtual machine named "gold" into "nodeX" where X is an integer.
# You only need four virtual machines for the cluster so './clone_gold.sh 1' (through 4)
# is enough to get started.

# Noted that the MAC addresses of the new virtual machines are set when cloning
# because we'll use DHCP (dnsmasq) facilities to set the IPs of all four ethernet
# interfaces.  libvirtd (virsh net-define /usr/share/libvirt/networks/*.xml) handles this.

i=$1

virsh destroy node${i}
virsh undefine node${i}

virt-clone -o gold -n node${i} --auto-clone \
-m 08:00:07:26:c${i}:00 \
-m 08:00:07:26:c${i}:01 \
-m 08:00:07:26:c${i}:02 \
-m 08:00:07:26:c${i}:03 


virsh start node${i}
