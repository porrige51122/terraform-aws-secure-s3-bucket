<!-- BEGIN_TF_DOCS -->
# S3 Bucket

This module creates an S3 bucket with the following features:

- Server-side encryption
- Public access block
- Bucket ownership controls
- HTTPS-only access
- Lifecycle rules
- Versioning

It also creates a KMS key for the bucket encryption.

## Usage

```hcl
module "s3_bucket" {
  source = "PATH_TO_MODULE"
  bucket_name = "my-bucket"
}
```

To use custom policies, you can pass them as variables:

```hcl
module "s3_bucket" {
  source = "PATH_TO_MODULE"
  bucket_name = "my-bucket"
  additional_bucket_policy = data.aws_iam_policy_document.bucket_policy.json
  additional_kms_policy = data.aws_iam_policy_document.kms_policy.json
}
```

Where `additional_bucket_policy` and `additional_kms_policy` are variables
that contain the policy documents.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | <= 5.6.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | <= 5.6.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_kms_key.key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) | resource |
| [aws_s3_bucket.bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_acl.acl](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl) | resource |
| [aws_s3_bucket_lifecycle_configuration.retention](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_lifecycle_configuration) | resource |
| [aws_s3_bucket_ownership_controls.ownership](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_ownership_controls) | resource |
| [aws_s3_bucket_policy.policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy) | resource |
| [aws_s3_bucket_public_access_block.block](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_s3_bucket_server_side_encryption_configuration.encryption](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration) | resource |
| [aws_s3_bucket_versioning.versioning](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.bucket_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.kms_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_bucket_policy"></a> [additional\_bucket\_policy](#input\_additional\_bucket\_policy) | The policy to attach to the S3 bucket | `string` | `""` | no |
| <a name="input_additional_kms_policy"></a> [additional\_kms\_policy](#input\_additional\_kms\_policy) | The policy to attach to the KMS key | `string` | `""` | no |
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | The name of the S3 bucket | `string` | `"aidan-test-bucket-771135409205"` | no |
| <a name="input_retention_enabled"></a> [retention\_enabled](#input\_retention\_enabled) | Whether to enable retention on the bucket | `bool` | `false` | no |
| <a name="input_retention_time"></a> [retention\_time](#input\_retention\_time) | The number of days to retain objects in the bucket | `number` | `30` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket_arn"></a> [bucket\_arn](#output\_bucket\_arn) | n/a |
| <a name="output_bucket_id"></a> [bucket\_id](#output\_bucket\_id) | n/a |
| <a name="output_kms_key_arn"></a> [kms\_key\_arn](#output\_kms\_key\_arn) | n/a |
| <a name="output_kms_key_id"></a> [kms\_key\_id](#output\_kms\_key\_id) | n/a |
<!-- END_TF_DOCS -->