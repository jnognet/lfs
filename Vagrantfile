# based: https://sleeplessbeastie.eu/2021/05/10/how-to-define-multiple-disks-inside-vagrant-using-virtualbox-provider/
#        https://stackoverflow.com/questions/71022767/how-to-create-external-storagea-when-it-doesnt-exist

require 'fileutils'

VAGRANT_CONTROLLER_NAME = "Virtual I/O Device SCSI controller"
VAGRANT_CONTROLLER_TYPE = "virtio-scsi"
VAGRANT_DISK_FILE = "disk1.vdi"

Vagrant.configure("2") do |config|
  config.vm.define "lfs"
  config.vm.box = "ubuntu/jammy64"
  config.vm.box_version = "20230817.0.0"

  config.vm.provider "virtualbox" do |v|
    v.cpus = 4
    v.memory = 8192
    v.name = "lfs"
    v.customize [ "createmedium", "disk", "--filename", VAGRANT_DISK_FILE, "--format", "VDI", "--size", 10240 ]
    v.customize [ "storagectl", v.name, "--name", VAGRANT_CONTROLLER_NAME, "--add", VAGRANT_CONTROLLER_TYPE, "--hostiocache", "off" ]
    v.customize [ "storageattach", v.name, "--storagectl", VAGRANT_CONTROLLER_NAME, "--port", "1", "--device", "0", "--type", "hdd", "--medium", VAGRANT_DISK_FILE ]
  end  

  config.vm.provision "file", source: "./scripts", destination: "$HOME/scripts"
  config.vm.provision "shell", path: "./script.sh"
end