
$TTL 86400
mylab.com.	IN	SOA	PC4.mylab.com.	hostmaster.mylab.com. (
			1 ; serial
			28800 ; refresh
			7200 ; retry
			604800 ; expire	
			86400 ; ttl
			)

;
mylab.com.	IN	NS	PC4.mylab.com.
;
localhost	A	127.0.0.1
PC4.mylab.com.	A	10.0.1.41
PC3.mylab.com.	A	10.0.1.31
PC2.mylab.com.	A	10.0.1.21
PC1.mylab.com.	A	10.0.1.11
