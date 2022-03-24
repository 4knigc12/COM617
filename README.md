# OpenNMS Horizon BPG  monitoring 

## Background 
Create a tutorial showing how OpenNMS can be configured to monitor BGP in a simulated "Internet Exchange”. Provide a working instance of OpenNMS deployed against a small scale BPG network using both soft and hard routers.


 Our team has been asked to produce documentation and video tutorial materials for OpenNMS for the purpose of a University project. We will be focusing on the following areas:
- Deployment and configuration of OpenNMS against a working BGP network showcasing its ability to detect a variety of failures and subsequent alerts
- Using software and bare metal routing to configure a BGP network.​
 -Provide repeatable and version-controlled configurations accessible within a shared GitHub repository.​.

This will Provide indistry professionals an enviorment to test and view a working small scale  BGP topology in the form of software and hardware routers plus a monitoring slotion useing OpenNMS

## Network Topology
![alt text](https://github.com/4knigc12/COM617/blob/main/10.03.22%20Network%20Topology.jpg)



## IP Table 
| Router | Interface   | IP  		      | Interface    | IP 	        | Interface    | IP 	    | Interface    | IP 	 |
| -------| ------------| ------------| -------------|-------------| ----------| ------------- | -------------|-------------|
| R1     | LB          | 10.0.0.251 	| Int0/1       |10.0.255.1/30|Int0/2	    | 10.0.255.5/30 | Int0/0       |10.0.0.0/24  |
| R2     | LB          | 10.0.0.252 	| Int0/1       |10.0.255.2/30|Int0/2	    | 10.0.254.2/30 | Int0/0       |10.0.253.1/30|
| R3     | LB          | 10.0.0.253 	| Int0/1       |10.0.255.6/30|Int0/2	    | 10.0.254.5/30 | Int0/0       |10.0.253.2/30|
| R4     | LB          | 10.0.0.254 	| Int0/1       |10.0.254.1/30|Int0/2	    | 10.0.254.6/30 |              |		           |

## 

## Getting sarted ##


**Specification **


**Quick starter guide##



Usernames & Passwords



#Demo Gif#








## Documentation
To learn more about OpenNMS Horizon [go to the complete documentation](https://docs.opennms.com/start-page/1.0.0/index.html)

## Community

### Contribution, Discussion and Support

You can reach the OpenNMS community and developers via the following channels:

- Q & A [Github Discussions](https://github.com/OpenNMS)
- Community Support [Community Support](https://opennms.discourse.group/)

### Refrences

https://github.com/opennms-forge/bmp-playground
https://vault.opennms.com/docs/opennms/releases/27.2.0/guide-admin/guide-admin.pdf
https://blog.no42.org/article/bmp-playground/
https://www.opennms.com/en/blog/2020-04-21-new-in-opennms-bgp-monitoring-protocol-bmp-functionality/

### Authors

- 4thori85  
- 4paynl49  
- 4knigc12
- 5smalh74
- 4frane88
- 4criba61

### Thanks

Thanks to Warren Earle and Craig Gallen for their help and support.
