resource "aws_kms_key" "key" {
  description             = "KMS key for S3 bucket encryption"
  deletion_window_in_days = 7
  is_enabled              = true
  policy                  = data.aws_iam_policy_document.kms_policy.json
}

data "aws_iam_policy_document" "kms_policy" {
  source_policy_documents = [var.additional_kms_policy]

  statement {
    actions = [
      "kms:*"
    ]

    resources = ["*"]

    effect = "Allow"

    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::${local.account_id}:root"]
    }
  }
}
