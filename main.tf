terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
    }
  }
}
provider "oci" {
  # tenancy_ocid = "<tenancy OCID>"
  # user_ocid = "ocid1.compartment.oc1..aaaa"
  # private_key_path = "~/keys/priv.pem"
  # fingerprint = "AA:11:BB:22"
  #region = "<region name>"
}
module "vcn01" {
  source            = "./vcn_module"
  display_name	  = "vcn01xxx"
  dns_label    = "vcn01"
  cidr_block    = "10.0.0.0/16"
  compartment_id    = var.compartment_ocid
}

module "vcn02" {
  source            = "./vcn_module"
  display_name	  = "vcn02"
  dns_label	  = "vcn02"
  cidr_block    = "172.0.0.0/16"
  compartment_id    = var.compartment_ocid
}

output "vcn01_id" {
  value = module.vcn01.vcn_id
}
output "vcn02_id" {
  value = module.vcn02.vcn_id
}
