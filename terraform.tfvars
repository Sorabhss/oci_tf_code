instance_config = [
  {
    compartment_id      = "ocid1.tenancy.oc1..aaaaaaaa7myhwo2h64yblckhab7r5qn6lf7vw57vkaqvt4vjw5vasdvmuqxa"
    # availability_domain = "ZFpx:AP-MUMBAI-1-AD-1"
    shape               = "VM.Standard2.1"
     subnet_id           = "ocid1.subnet.oc1.ap-mumbai-1.aaaaaaaamrwbbh66gy6xmt56uuj52vnnfmgjmqhr66ceen6kxzwdwyleenjq"
     assign_public_ip    = true
    # ssh_authorized_keys = "my-auth-key"
    # image_ocid          = "Oracle Linux 8"
     display_name        = "test-oci-instance"
  }
]

vcn_config = [
  {
    compartment_ocid                            = "ocid1.tenancy.oc1..aaaaaaaa7myhwo2h64yblckhab7r5qn6lf7vw57vkaqvt4vjw5vasdvmuqxa"
    vcn_display_name                            = "defautVCN"
    vcn_cidr                                    = "10.0.0.0/16"
    vcn_dns_label                               = "vcn"
    subnet_dns_label                            = "subnet"
    # network_firewall_policy_display_name        = "test_firewall_policy"
    # network_firewall_display_name               = "test_network_firewall"
    # network_firewall_ipv4address                = "test_firewall_ipv4address"
    # network_firewall_ipv6address                = "test_firewall_ipv6address"
    # network_security_group_ids = [ "ocid1.tenancy.oc1..aaaaaaaa7myhwo2h64yblckhab7r5qn6lf7vw57vkaqvt4vjw5vasdvmuqxa"]
  }
]
storage_config = [
  {
    compartment_id     = "ocid1.tenancy.oc1..aaaaaaaa7myhwo2h64yblckhab7r5qn6lf7vw57vkaqvt4vjw5vasdvmuqxa"
    bucket_name        = "my-new-bucket2"
    bucket_namespace   = "bmhhib0krycu"
    storage_tier       = "Standard"
    public_access_type = "ObjectReadWithoutList"
    # bucket             = "my-new-bucket1"
    # content            = "This is an example object content."
    # # namespace          = "test_bucket"
    # object             = "plain.txt"
  }
]