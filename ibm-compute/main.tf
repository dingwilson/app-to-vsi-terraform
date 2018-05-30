# IBM
#
# Terraform IasC for Creating a VSI Image and deploying an Application into it
#
# Version 1.0
#
# Author: Matthew Perrins and Wilson Ding

provider "ibm" {
  bluemix_api_key    = "${var.ibm_cloud_api_key}"
  softlayer_username = "${var.ibm_sl_username}"
  softlayer_api_key  = "${var.ibm_sl_api_key}"
}

resource "ibm_compute_ssh_key" "ssh_key_gip" {
    label = "${var.ssh_label}"
    public_key = "${var.ssh_public_key}"
}

resource "ibm_compute_vm_instance" "vm1" {
    hostname = "${var.vi_instance_name}"
    domain = "example.com"
    os_reference_code = "DEBIAN_8_64"
    datacenter = "${var.datacenter}"
    network_speed = 100
    hourly_billing = true
    private_network_only = false
    cores = 1
    memory = 1024
    disks = [25]
    local_disk = false
    ssh_key_ids = [
        "${ibm_compute_ssh_key.ssh_key_gip.id}"
    ]
}
