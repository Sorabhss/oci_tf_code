
module "vcn" {
  source                                      = "./module/vcn"
  for_each                                    = { for i in var.vcn_config : i.vcn_display_name => i }
  compartment_ocid                            = each.value["compartment_ocid"]
  vcn_display_name                            = each.value["vcn_display_name"]
  vcn_cidr                                    = each.value["vcn_cidr"]
  vcn_dns_label                               = each.value["vcn_dns_label"]
  subnet_dns_label                            = each.value["subnet_dns_label"]
  # network_firewall_policy_display_name        = each.value["network_firewall_policy_display_name"]
  # network_firewall_display_name               = each.value["network_firewall_display_name"]
  # network_firewall_ipv4address                = each.value["network_firewall_ipv4address"]
  # network_firewall_ipv6address                = each.value["network_firewall_ipv6address"]
  # network_firewall_network_security_group_ids = each.value["network_security_group_ids"]
}
module "storage" {
  source             = "./module/storage"
  for_each           = { for i in var.storage_config : i.bucket_name => i }
  compartment_id     = each.value["compartment_id"]
  bucket_name        = each.value["bucket_name"]
  bucket_namespace   = each.value["bucket_namespace"]
  storage_tier       = each.value["storage_tier"]
  public_access_type = each.value["public_access_type"]
  # object_content     = each.value["content"]
  # # object_namespace   = each.value["namespace"]
  # object_object      = each.value["object"]
}

module "compute_instance" {
  source              = "./module/computeinstance"
  for_each            = { for i in var.instance_config : i.display_name => i }
  compartment_id      = each.value["compartment_id"]
  #availability_domain = each.value["availability_domain"]
   shape               = each.value["shape"]
   subnet_id           = each.value["subnet_id"]
   assign_public_ip    = each.value["assign_public_ip"]
  # ssh_authorized_keys = each.value["ssh_authorized_keys"]
  # image_ocid          = each.value["image_ocid"]
   display_name        = each.value["display_name"]
}