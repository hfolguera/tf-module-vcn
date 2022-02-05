variable "compartment_id" {
  description = "The OCID of the compartment to contain the VCN"
  type        = string
}

variable "cidr_blocks" {
  description = "The list of one or more IPv4 CIDR blocks for the VCN"
  type        = list(any)
}

variable "defined_tags" {
  description = "Defined tags for this resource"
  type        = map(any)
  default     = {}
}

variable "display_name" {
  description = "Displayed name of the vcn resource"
  type        = string
  default     = null
}

variable "dns_label" {
  description = "A DNS label for the VCN, used in conjunction with the VNIC's hostname and subnet's DNS label to form a fully qualified domain name (FQDN)"
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "Free-form tags for this resource"
  type        = map(any)
  default     = {}
}

variable "is_ipv6enabled" {
  description = "Whether IPv6 is enabled for the VCN"
  type        = bool
  default     = false
}
