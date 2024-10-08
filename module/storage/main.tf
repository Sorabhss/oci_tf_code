resource "oci_objectstorage_bucket" "test_bucket" {
    compartment_id = var.compartment_id
    name = var.bucket_name
    namespace = var.bucket_namespace
    storage_tier = var.storage_tier
    access_type = var.public_access_type
}
# resource "oci_objectstorage_object" "test_object" {
#     bucket = oci_objectstorage_bucket.test_bucket.id
#     content = var.object_content
#     namespace = oci_objectstorage_bucket.test_bucket.namespace
#     object = var.object_object
#     depends_on = [ oci_objectstorage_bucket.test_bucket ]
# }

