#!/bin/bash

i=$1

virsh destroy node${i}
virsh undefine node${i}

virt-clone -o gold -n node${i} --auto-clone \
-m 08:00:07:26:c${i}:00 \
-m 08:00:07:26:c${i}:01 \
-m 08:00:07:26:c${i}:02 \
-m 08:00:07:26:c${i}:03 


virsh start node${i}
