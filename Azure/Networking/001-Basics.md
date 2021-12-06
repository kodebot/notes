# Classful address 

Defines how net id and host ids are allocated

![image classful](./img/classful.png)

|Class	            |Leading bits   |	Network Bits|	HostID bits|	Address Range               | CIDR |
|--                 |--             |--             |--            |--                              |--    |
|Class A	        |0	            |8	            |24	           |0.0.0.0 to 127.255.255.255      |/8    |
|Class B	        |10	            |16	            |16	           |128.0.0.0 to 191.255.255.255    |/16   |
|Class C	        |110	        |24	            |8	           |192.0.0.0 to 223.255.255.255    |/24   |
|Class D (multicast)|1110	        |NA             |NA            |224.0.0.0 to	239.255.255.255 |NA    |	
|Class E (reserved) |1111	        |NA             |NA            |240.0.0.0	255.255.255.255     |NA    |

the network and host bits are fixed and no flexibility - resulted in too many wasted address

i.e. you will have smaller number of networks with too many hosts in them or too many networks with small number of hosts in them.


# Network Address Translation (NAT)

* connects private net to public network and takes care of address translations

![image NAT](./img/nat.png)

NAT basically works by assigning different ports to different connections and tracking them


# Classless Inter-Domain Routing (CIDR)

Used only for private address space

![image CIDR](./img/cidr.png)

CIDR solves address wastage issue by being flexible on network and host bits allocation

It is right-padded bitmask that's applied to the IP Address

```
13.91.28.40/13 => 13.91.28.40 <mask> 255.248.0.0 =>

00001101.01011011.00011100.00101000 
        <mask> 
11111111.11111000.00000000.00000000
        =>
00001101.01011000.00000000.00000000
13.88.0.0 (first IP) aka network Id


To get last IP, take the first IP and set the host bits to 1
00001101.01011000.00000000.00000000

00001101.01011111.11111111.11111111

13.95.255.255 (last IP) aka broadcast Id


```