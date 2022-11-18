Vagrant.configure("2") do |config|
  config.vm.define "ubuntu" do |subconfig|
    subconfig.vm.box = "generic/ubuntu2204"
    subconfig.vm.provider "libvirt" do |v|
      v.memory = 2024
      v.cpus = 1
    end
  end
  config.vm.define "arch" do |subconfig|
    subconfig.vm.box = "generic/arch"
    subconfig.vm.provider "libvirt" do |v|
      v.memory = 2024
      v.cpus = 1
    end
  end
  config.vm.define "centos" do |subconfig|
    subconfig.vm.box = "generic/centos9s"
    subconfig.vm.provider "libvirt" do |v|
      v.memory = 2024
      v.cpus = 1
    end
  end
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "configure-main.yml"
    ansible.become = true
  end
end
