resource "oci_core_instance" "this" {
  compartment_id       = var.compartment_id
  availability_domain  = data.oci_identity_availability_domains.ad.availability_domains[0].name
  shape                = var.shape

  create_vnic_details {
    subnet_id          = var.subnet_id
    assign_public_ip   = var.assign_public_ip
  }

  # metadata = {
  #   ssh_authorized_keys = var.ssh_authorized_keys
  # }

  source_details {
    source_type = "image"
    source_id   = data.oci_core_images.example.images[0].id
  }

  display_name = var.display_name
}
data "oci_core_images" "example" {
  compartment_id = var.compartment_id
}
data "oci_identity_availability_domains" "ad" {
  compartment_id = var.compartment_id
}
