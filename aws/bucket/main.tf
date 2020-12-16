resource "aws_s3_bucket" "s3_bucket" {
  bucket = "${var.stack}-${var.environment}-${var.name}"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name = var.name
    Environment = var.environment
    Stack = var.stack
    Type = "bucket"
  }
}
