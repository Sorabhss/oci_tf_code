#################
# VCN
#################
resource "oci_core_vcn" "test_vcn" {
  dns_label      = var.vcn_dns_label
  cidr_block     = var.vcn_cidr
  compartment_id = var.compartment_ocid
  display_name   = var.vcn_display_name
}
######################
# Subnet
######################
resource "oci_core_subnet" "test_subnet" {
    cidr_block = var.vcn_cidr
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.test_vcn.id
#   count               = length(data.oci_identity_availability_domains.this.availability_domains)
#   availability_domain = lookup(data.oci_identity_availability_domains.this.availability_domains[count.index], "name")
#   cidr_block          = cidrsubnet(var.vcn_cidr, ceil(log(length(data.oci_identity_availability_domains.this.availability_domains) * 2, 2)), count.index)
#   display_name        = "Default Subnet ${lookup(data.oci_identity_availability_domains.this.availability_domains[count.index], "name")}"
#   dns_label           = "${var.subnet_dns_label}${count.index + 1}"
#   compartment_id      = var.compartment_ocid
#   vcn_id              = oci_core_vcn.this.id
#   security_list_ids   = [oci_core_vcn.this.default_security_list_id]
}
######################
# Internet Gateway
######################
resource "oci_core_internet_gateway" "test_ig" {
  compartment_id = var.compartment_ocid
  vcn_id         = oci_core_vcn.test_vcn.id
}    

######################
#  Route Table
######################
resource "oci_core_route_table" "test_rt" {
  # manage_default_resource_id = oci_core_vcn.test_rt.default_route_table_id
  compartment_id = var.compartment_ocid
  vcn_id         = oci_core_vcn.test_vcn.id
  route_rules {
    destination       = "0.0.0.0/0"
    network_entity_id = oci_core_internet_gateway.test_ig.id
  }
}
# ######################
# # Firewall policy
# ######################
# resource "oci_network_firewall_network_firewall_policy" "test_network_firewall_policy" {
#     compartment_id = var.compartment_ocid
#     display_name = var.network_firewall_policy_display_name
# }

# ######################
# # Firewall Rules
# ######################
# resource "oci_network_firewall_network_firewall" "test_network_firewall" {
#     compartment_id = var.compartment_ocid
#     network_firewall_policy_id = oci_network_firewall_network_firewall_policy.test_network_firewall_policy.id
#     subnet_id = oci_core_subnet.test_subnet.id
#     # availability_domain = data.oci_identity_availability_domains.test_domain
#     display_name = var.network_firewall_display_name
#     ipv4address = var.network_firewall_ipv4address
#     ipv6address = var.network_firewall_ipv6address
#     network_security_group_ids = var.network_firewall_network_security_group_ids
# }
######################
# Availability Domains
######################
data "oci_identity_availability_domains" "test_domain" {
  compartment_id = var.compartment_ocid
}

