resource "aws_s3_bucket_policy" "expense_tracker_bucket_policy" {
    bucket = aws_s3_bucket.expense_tracker.bucket
    policy = data.aws_iam_policy_document.expense_tracker_iam_public_access_policy.json
}

data "aws_iam_policy_document" "expense_tracker_iam_public_access_policy" {
  statement {
    sid = "AllowPublicReadAccess"

    principals {
      type = "AWS"
      identifiers = [ "*" ]
    }

    resources = [
        "${aws_s3_bucket.expense_tracker.arn}/*"
    ]

    actions = [ "s3:GetObject" ]

    effect = "Allow"
  }
}