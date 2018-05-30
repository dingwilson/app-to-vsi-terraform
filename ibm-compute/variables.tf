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

variable "ibm_cloud_api_key" {
	default = "ibmcloudapikey"
}

variable "ibm_sl_api_key" {
	default = "ibmslapikey"	
}

variable "ibm_sl_username" {
	default = "ibmslusername"
}

# Name of the Virtual Instance based on the App Name
variable "vi_instance_name" {
	default = "vi-instance-01"
}