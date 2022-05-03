resource "aws_s3_bucket" "expense_tracker" {
  bucket = var.props["bucket"]

  tags = {
    Name = "Expense Tracker"
  }
}
