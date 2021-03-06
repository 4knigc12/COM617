# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

# Define server parameters
server = {:vm_box => "ubuntu/focal64",
          :name => "COM617",
          :ip => "192.168.56.10",
          :memory => 6144,
          :vcpus => 2,
          :opennms_port => 8980,
          :opennms_username => "admin",
          :opennms_password => "admin"}

config.vm.box = server[:vm_box]
config.vm.define server[:name]
config.vm.hostname = server[:name]
config.vm.network :private_network, ip: server[:ip]
config.vm.network :forwarded_port, guest: server[:opennms_port], host: server[:opennms_port]
    config.vm.provider :virtualbox do |vb|
    vb.name = server[:name]
    vb.memory = server[:memory]
    vb.cpus = server[:vcpus]
    end

    # Provision via Ansible script
    config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "ansible-playbooks/deploy-com617.yml"
    ansible.become = true
    ansible.groups = {
        "opennms_docker_hosts" => [server[:name]],
        "opennms_docker_hosts:vars" => {"com617_install_path" => "/usr/local/com617/",
                                       "opennms_port" => server[:opennms_port],
                                       "opennms_username" => server[:opennms_username],
                                       "opennms_password" => server[:opennms_password]}
    }
    end
end