variable "compartment_id" {
  description = "The OCID of the compartment."
  type        = string
}

# variable "availability_domain" {
#   description = "The availability domain to launch the instance in."
#   type        = string
# }

variable "shape" {
  description = "The shape of the instance."
  type        = string
}

variable "subnet_id" {
  description = "The OCID of the subnet for the VNIC."
  type        = string
}

variable "assign_public_ip" {
  description = "Whether to assign a public IP address."
  type        = bool
  # default     = false
}

# variable "ssh_authorized_keys" {
#   description = "SSH public key for accessing the instance."
#   type        = string
# }

# variable "image_ocid" {
#   description = "The OCID of the image to use for the instance."
#   type        = string
# }

variable "display_name" {
  description = "The display name of the instance."
  type        = string
}
