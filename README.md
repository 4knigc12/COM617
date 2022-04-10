# OpenNMS Horizon BPG  monitoring

## Background

This project shows how OpenNMS can be configured to monitor BGP in a simulated "Internet Exchange”. It deploys a containerised instance of OpenNMS deployed against a small scale BPG network using FRRouting software routers.

This documentation covers:

- Environment creation:
  - Vagrant file to deploy a virtual environment.
  - Docker Compose to deploy containers.
- Deployment and configuration of OpenNMS against a working BGP network showcasing its ability to detect a variety of failures and subsequent alerts.
- Provides repeatable and version-controlled configurations accessible within this shared GitHub repository.

The code and documentation shown here should be considered a starting point for anyone looking to establish the functionality of OpenNMS when used to monitor BGP and OpenBMP. We encourage you build on this and tailor it to your environment.  It is not meant for production deployment.

### Video Demonstration

![Demonstration](./software-routers/gifs/demo-fancy.gif)

## Network Topology

![alt text](./software-routers/BGP%20Network%20Topology%20(1)-Virtual.jpg)

### IP Table

__NEEDS UPDATE__

| Router | Interface   | IP           | Interface    | IP           | Interface    | IP       | Interface     | IP          |
| -------| ------------| ------------ | -------------|-------------| ----------| ------------- | -------------|-------------|
| R1     | LB          | 10.0.0.251   | Int0/1       |10.0.255.1/30|Int0/2      | 10.0.255.5/30 | Int0/0       |10.0.0.0/24  |
| R2     | LB          | 10.0.0.252   | Int0/1       |10.0.255.2/30|Int0/2      | 10.0.254.2/30 | Int0/0       |10.0.253.1/30|
| R3     | LB          | 10.0.0.253   | Int0/1       |10.0.255.6/30|Int0/2      | 10.0.254.5/30 | Int0/0       |10.0.253.2/30|
| R4     | LB          | 10.0.0.254   | Int0/1       |10.0.254.1/30|Int0/2      | 10.0.254.6/30 |              |             |

## Getting sarted

## Host Minimum Specifications

The minimum requirements for free resource on the host:

vCPU: 2

RAM: 6GB

HDD: 50GB

> **Note:**
It can take 5-10 mins to fully provision the environment if resouces are low

## Installation - Option 1 (Easy install) - Vagrant

Vagrant can be used to build and provision an Ubuntu virtual machine on Oracle Virtual Box. This makes it simple to build the environment with very little involvement.

- Install [Vagrant](https://www.vagrantup.com/)
- Install [Oracle Virtual Box](https://www.virtualbox.org/)
- Clone this repo to a Windows PC
- Run `vagrant up` in this directory

### Vagrant Usage

A comprehensive cheat sheet can be found here: [wpscholar/vagrant-cheat-sheet.md](https://gist.github.com/wpscholar/a49594e2e2b918f4d0c4), but to get started here are some basic commands to manage Vagrant.

- To connect to the host use `vagrant ssh`
- To suspend the host to access it later, use `vagrant suspend`
- To delete the environment use `vagrant destroy`

## Installation - Option 2 - Ansible

If you already have a suitable host machine that meets or exceeds the minimum specifications above, you can use the Ansible playbook to provision the environment. The playbook installs Docker, Docker Compose and other required components and then provisions OpenNMS Horizon and the FRRouting software routers into containers.

- Install [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
- Clone this repository
- Execute the playbook `./ansible-playbooks/deploy-com617.yml`

## Connecting to the Environment

### Connecting to OpenNMS

- OpenNMS Username: admin
- OpenNMS Password: admin
- OpenNMS URL: [http://localhost:8980/opennms/index.jsp](http://localhost:8980/opennms/index.jsp)

![OpenNMS Interface](./software-routers/gifs/opennms-demo-fancy.gif)

### Conecting to FRR Routers

From the host VM, issue the following command to connect to the router shell. Replace frr-r0x with the router number

    sudo docker exec -u frr -it frr-r0x vtysh

## Further Reading

To learn more about OpenNMS Horizon [go to the complete documentation](https://docs.opennms.com/start-page/1.0.0/index.html)

## Community

### Contribution, Discussion and Support

You can reach the OpenNMS community and developers via the following channels:

- Q & A [Github Discussions](https://github.com/OpenNMS)
- Community Support [Community Support](https://opennms.discourse.group/)

### Refrences

[OpenMNS Forge BMP Playground](https://github.com/opennms-forge/bmp-playground),
[OpenNMS Docs](https://vault.opennms.com/docs/opennms/releases/27.2.0/guide-admin/guide-admin.pdf),
[BMP Playground](https://blog.no42.org/article/bmp-playground/),
[OpenNMS BGP Monitoring](https://www.opennms.com/en/blog/2020-04-21-new-in-opennms-bgp-monitoring-protocol-bmp-functionality/),
[OpenBMP](https://www.openbmp.org/),
[FFRouting](https://frrouting.org/)

### Authors

Created by students from [Solent University Southampton](https://www.solent.ac.uk/), COM617 Team 12:

- 4thori85  
- 4paynl49  
- 4knigc12
- 5smalh74
- 4frane88
- 4criba61

### Thanks

Thanks to Warren Earle and Craig Gallen for their help and support.
