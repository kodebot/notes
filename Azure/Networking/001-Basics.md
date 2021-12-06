# Classful address 

Defines how net id and host ids are allocated

![image classful](./img/classful.png)

Class	Leading bits	Size of network number bit field	Size of rest bit field	Number of networks	Addresses per network	Total addresses in class	Start address	End address	Default subnet mask in dot-decimal notation	CIDR notation
Class A	0	8	24	0.0.0.0 to 127.255.255.255
Class B	10	16	16	128.0.0.0 to 191.255.255.255
Class C	110	24	8	192.0.0.0 to 223.255.255.255 /24
Class D (multicast)	1110	not defined	not defined	not defined	not defined	268,435,456 (228)	224.0.0.0	239.255.255.255	not defined	not defined
Class E (reserved)	1111	not defined	not defined	not defined	not defined	268,435,456 (228)	240.0.0.0	255.255.255.255[b]	not defined	not defined

resulted in too many wasted address 


# Network Address Translation (NAT)

* connects private net to public network and takes care of address translations

![image NAT](./img/nat.png)