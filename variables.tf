# variable "compartment_id" {
#   description = "The OCID of the compartment."
#   type        = string
# }

# variable "availability_domain" {
#   description = "The availability domain to launch the instance in."
#   type        = string
# }

# variable "shape" {
#   description = "The shape of the instance."
#   type        = string
# }

# variable "subnet_id" {
#   description = "The OCID of the subnet for the VNIC."
#   type        = string
# }

# variable "assign_public_ip" {
#   description = "Whether to assign a public IP address."
#   type        = bool
#   default     = false
# }

# variable "ssh_authorized_keys" {
#   description = "SSH public key for accessing the instance."
#   type        = string
# }

# variable "image_ocid" {
#   description = "The OCID of the image to use for the instance."
#   type        = string
# }

# variable "display_name" {
#   description = "The display name of the instance."
#   type        = string
# }


variable "tenancy_ocid" {
  default = "ocid1.tenancy.oc1..aaaaaaaa7myhwo2h64yblckhab7r5qn6lf7vw57vkaqvt4vjw5vasdvmuqxa"
}
variable "region" {
  default = "ap-mumbai-1"
}
variable "user_ocid" {
  default = "ocid1.user.oc1..aaaaaaaaevbgqurnlaq2ev5unijcr2ifccpxpiu6bt77blfkpsryv33iom7q"
}
variable "fingerprint" {
  default = "15:23:6f:c8:47:31:b9:64:25:a5:1a:2c:ba:ee:ff:ea"
}
variable "private_key_path" {
  default = "salokhesourabh09@gmail.com_2024-10-07T08_31_13.199Z.pem"
}
variable "vcn_config" {

}
variable "storage_config" {

}
variable "instance_config" {

}