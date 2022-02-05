<!-- BEGIN_TF_DOCS -->

# Module


This module deploy the following resources:
#### Resources

| Name | Type |
|------|------|
| [oci_core_vcn.this](https://registry.terraform.io/providers/hashicorp/oci/4.44.0/docs/resources/core_vcn) | resource |
#### Inputs

| Name | Description | Type |
|------|-------------|------|
| <a name="input_compartment_id"></a> [compartment_id](#input_compartment_id) | The OCID of the compartment to contain the VCN | `string` |
| <a name="input_cidr_blocks"></a> [cidr_blocks](#input_cidr_blocks) | The list of one or more IPv4 CIDR blocks for the VCN | `list(any)` |
| <a name="input_defined_tags"></a> [defined_tags](#input_defined_tags) | Defined tags for this resource | `map(any)` |
| <a name="input_display_name"></a> [display_name](#input_display_name) | Displayed name of the vcn resource | `string` |
| <a name="input_dns_label"></a> [dns_label](#input_dns_label) | A DNS label for the VCN, used in conjunction with the VNIC's hostname and subnet's DNS label to form a fully qualified domain name (FQDN) | `string` |
| <a name="input_freeform_tags"></a> [freeform_tags](#input_freeform_tags) | Free-form tags for this resource | `map(any)` |
| <a name="input_is_ipv6enabled"></a> [is_ipv6enabled](#input_is_ipv6enabled) | Whether IPv6 is enabled for the VCN | `bool` |
#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_vcn_id"></a> [vcn_id](#output_vcn_id) | OCID of created VCN. |
#### Modules

No modules.
#### Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider_oci) | 4.44.0 |
#### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | >=1.0 |
| <a name="requirement_oci"></a> [oci](#requirement_oci) | 4.44.0 |
#### Module TAG:
```
{
    "tf.plan.version": "1.0.0"
}
```

This file has beed generated automatically with terraform-docs and its configuration file `.terraform-docs.yml`. Please don't edit it!
<!-- END_TF_DOCS -->