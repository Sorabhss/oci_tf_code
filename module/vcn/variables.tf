variable "compartment_ocid" {
#   description = "Compartment's OCID where VCN will be created. "
}

variable "vcn_display_name" {
  description = "Name of Virtual Cloud Network."
#   default = "defautVCN"
}

variable "vcn_cidr" {
  description = "A VCN covers a single, contiguous IPv4 CIDR block of your choice. "
#   default     = "10.0.0.0/16"
}

variable "vcn_dns_label" {
  description = "A DNS label for the VCN, used in conjunction with the VNIC's hostname and subnet's DNS label to form a fully qualified domain name (FQDN) for each VNIC within this subnet. "
#   default     = "vcn"
}

variable "subnet_dns_label" {
  description = "A DNS label prefix for the subnet, used in conjunction with the VNIC's hostname and VCN's DNS label to form a fully qualified domain name (FQDN) for each VNIC within this subnet. "
#   default     = "subnet"
}
# variable "network_firewall_policy_display_name" {
#   description = "network_firewall_policy_display_name"
# }
# variable "network_firewall_display_name" {
#   description = "network_firewall_policy_display_name"
# }
# variable "network_firewall_ipv4address" {
#   description = "network_firewall_ipv4address"
# }
# variable "network_firewall_ipv6address" {
#   description = "network_firewall_ipv6address"
# }
# variable "network_firewall_network_security_group_ids" {
#   description = "network_firewall_network_security_group_ids"
#   type = list(string) 
# }