# BMP Playground Vagrant Provisioning Script

Creates an Ubuntu VM in VirtualBox and provisions OpenNMS and a basic GoBGP topology using Ansible. Uses the [BMP Playground](https://github.com/opennms-forge/bmp-playground) repo.

## Host Minimum Specifications

The minimum requirements for free resource on the host:

vCPU: 2

RAM: 6GB

HDD: 50GB

## Installation

- Install [Vagrant](https://www.vagrantup.com/)
- Install [Oracle Virtual Box](https://www.virtualbox.org/)
- Clone this repo to a Windows PC
- Run `vagrant up` in this directory

> **Note:**
It can take 5-10 mins to fully provision the environment

## Usage

- To connect to the host use `vagrant ssh`
- To suspend the host to access it later, use `vagrant suspend`
- To delete the environment use `vagrant destroy`

## Defaults

- OpenNMS Username: admin
- OpenNMS Password: admin
- OpenNMS URL: http://localhost:8980/opennms/index.jsp
