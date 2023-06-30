/**
 * # S3 Bucket
 *
 * This module creates an S3 bucket with the following features:
 *
 * - Server-side encryption
 * - Public access block
 * - Bucket ownership controls
 * - HTTPS-only access
 * - Lifecycle rules
 * - Versioning
 *
 * It also creates a KMS key for the bucket encryption.
 *
 * ## Usage
 *
 * ```hcl
 * module "s3_bucket" {
 *   source = "PATH_TO_MODULE"
 *   bucket_name = "my-bucket"
 * }
 * ```
 *
 * To use custom policies, you can pass them as variables:
 *
 * ```hcl
 * module "s3_bucket" {
 *   source = "PATH_TO_MODULE"
 *   bucket_name = "my-bucket"
 *   additional_bucket_policy = data.aws_iam_policy_document.bucket_policy.json
 *   additional_kms_policy = data.aws_iam_policy_document.kms_policy.json
 * }
 * ```
 *
 * Where `additional_bucket_policy` and `additional_kms_policy` are variables
 * that contain the policy documents.
 */

data "aws_caller_identity" "current" {}

locals {
  account_id = data.aws_caller_identity.current.account_id
}