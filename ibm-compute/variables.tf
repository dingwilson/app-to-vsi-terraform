# Default Data Center for the creation of the Virtual Instance
variable "datacenter" {
  description = "Washington"
  default = "wdc04"
}

variable "ssh_label" {
  default = "PublicKey"
}

variable "ssh_public_key" {
	default = "publickey"
}

variable "ssh_private_key" {
	default = "privatekey"
}

variable "ibm_cloud_api_key" {
	default = "6M7HWdVtOy0cO-vAvA1SINuF1NSANho4wAvaGaRC1Hg0"
	
}

variable "ibm_sl_api_key" {
	default = "7821ca2de9a53215e62d6be12f4d509fb623fd92128839d49fb5e7caf314ba7c"	
}

variable "ibm_sl_username" {
	default = "1416455_wilson.ding1@ibm.com"
}

# Name of the Virtual Instance based on the App Name
variable "vi-instance-name" {
	default = "vi-test-01"
}