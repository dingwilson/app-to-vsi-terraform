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
	default = "1mQKMYL-apcK1P_IbjVdrmkBsednPxRJrK_Yyp5qKYME"
}

variable "TF_VAR_ibm_sl_api_key" {
	default = "4f2e640515b75183fb2685bf0e02f467e4c3fa90b12f42000132faab26d1db46"	
}

variable "ibm_sl_username" {
	default = "1416455_wilson.ding1@ibm.com"
}

# Name of the Virtual Instance based on the App Name
variable "vi-instance-name" {
	default = "vi-test-01"
}