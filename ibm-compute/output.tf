output "global ip"{
	value = "${ibm_network_public_ip.test-global-ip.ip_address}"
}
