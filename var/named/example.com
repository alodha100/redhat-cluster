$TTL 3H
@	IN SOA	@ rname.invalid. (
					0	; serial
					1D	; refresh
					1H	; retry
					1W	; expire
					3H )	; minimum
	NS	@
	A	127.0.0.1


node1 IN A 172.16.5.1
node2 IN A 172.16.5.2
node3 IN A 172.16.5.3
node4 IN A 172.16.5.4

node1.cluster5 IN A 172.16.5.1
node2.cluster5 IN A 172.16.5.2
node3.cluster5 IN A 172.16.5.3
node4.cluster5 IN A 172.16.5.4

node1.private IN A 172.17.5.1
node2.private IN A 172.17.5.2
node3.private IN A 172.17.5.3
node4.private IN A 172.17.5.4

node1.cluster5.private IN A 172.17.5.1
node2.cluster5.private IN A 172.17.5.2
node3.cluster5.private IN A 172.17.5.3
node4.cluster5.private IN A 172.17.5.4

node1.storage1 IN A 172.18.5.1
node2.storage1 IN A 172.18.5.2
node3.storage1 IN A 172.18.5.3
node4.storage1 IN A 172.18.5.4

node1.cluster5.storage1 IN A 172.18.5.1
node2.cluster5.storage1 IN A 172.18.5.2
node3.cluster5.storage1 IN A 172.18.5.3
node4.cluster5.storage1 IN A 172.18.5.4

node1.storage2 IN A 172.19.5.1
node2.storage2 IN A 172.19.5.2
node3.storage2 IN A 172.19.5.3
node4.storage2 IN A 172.19.5.4

node1.cluster5.storage2 IN A 172.19.5.1
node2.cluster5.storage2 IN A 172.19.5.2
node3.cluster5.storage2 IN A 172.19.5.3
node4.cluster5.storage2 IN A 172.19.5.4

