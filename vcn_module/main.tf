resource "oci_core_virtual_network" "vcn" {
  cidr_block     = var.cidr_block
  dns_label      = var.dns_label
  compartment_id = var.compartment_id
  display_name   = var.display_name
}
