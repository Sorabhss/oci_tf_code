terraform {
  backend "http" {
    address = "https://objectstorage.ap-mumbai-1.oraclecloud.com/p/VV-tuNl2aNP1xPVPB7JsGrhQikwTJZy3WMykmHivmFDhqsgNL_Yuvoa4BfmYwb7P/n/bmhhib0krycu/b/oci_tfbackend/o/terraform.tfstate"
    update_method = "PUT"
  }
}