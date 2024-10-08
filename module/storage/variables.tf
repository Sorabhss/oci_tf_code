# variable "object_content" {
#   description = "content of the object"
# }
# # variable "object_namespace" {
# #   description = "object namespace"
# # }
# variable "object_object" {
#   description = "name of the object"
# }
variable "compartment_id" {
  description = "name of the compartment id"
}
variable "bucket_name" {
  description = "name of the bucket"

}
variable "bucket_namespace" {
  description = "bucket namespace"
}
variable "storage_tier" {
  description = "storage tier type"
}
variable "public_access_type" {
  description = "public access"
}