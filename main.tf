resource "oci_core_vcn" "this" {
  #Required
  compartment_id = var.compartment_id

  #Optional
  cidr_blocks    = var.cidr_blocks
  defined_tags   = var.defined_tags
  display_name   = var.display_name
  dns_label      = var.dns_label
  freeform_tags  = var.freeform_tags
  is_ipv6enabled = var.is_ipv6enabled
}

