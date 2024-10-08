provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  region           = var.region
  user_ocid = var.user_ocid
  fingerprint     = var.fingerprint
  private_key     = file(var.private_key_path) 
}
 
terraform {
  required_version = ">= 0.12.0"
}