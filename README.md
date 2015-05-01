# redhat-cluster
KVM setup files for studying for RH436



Set up the KVM networking with:

for i in public private storage1 storage2; do virsh  net-define /usr/share/libvirt/networks/${i}.xml; done


