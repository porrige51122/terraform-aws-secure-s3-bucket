output "bucket_arn" {
  value = aws_s3_bucket.bucket.arn
}

output "bucket_id" {
  value = aws_s3_bucket.bucket.id
}

output "kms_key_arn" {
  value = aws_kms_key.key.arn
}

output "kms_key_id" {
  value = aws_kms_key.key.key_id
}