resource "aws_s3_bucket_acl" "expense_tracker_acl" {
  bucket = aws_s3_bucket.expense_tracker.bucket
  acl    = var.props["acl"]
}