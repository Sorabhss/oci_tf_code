output "instance_id" {
  description = "The OCID of the created instance."
  value       = oci_core_instance.this.id
}

output "instance_public_ip" {
  description = "The public IP address of the created instance."
  value       = oci_core_instance.this.public_ip
}
