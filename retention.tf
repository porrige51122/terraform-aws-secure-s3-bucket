/**
 * # Retention
 *
 * This file contains the terraform code to add a potential retention policy to
 * the S3 bucket. This is not enabled by default, but can be enabled by setting
 * the `retention_enabled` variable to `true` and setting the `retention_time`
 * variable to the number of days to retain the objects in the bucket.
 */

resource "aws_s3_bucket_lifecycle_configuration" "retention" {
  count  = var.retention_enabled ? 1 : 0
  bucket = aws_s3_bucket.bucket.id

  rule {
    id = "retention"
    expiration {
      days = var.retention_time
    }

    status = var.retention_enabled ? "Enabled" : "Disabled"
  }
}