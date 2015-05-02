# redhat-cluster
KVM setup files for studying for RH436



Set up the KVM networking with:

for i in public private storage1 storage2; do virsh  net-define /usr/share/libvirt/networks/${i}.xml; done

THINGS TO SET:

The fencing daemon 'fenced' won't be able to connect on the network unless you set the SELinux boolean:

setsebool -P fenced_can_network_connect 1


