resource "aws_s3_bucket" "static_website_hosting" {
  bucket = "${var.stack}-${var.environment}-${var.name}"
  acl    = "public-read"

  index_document = var.index_document
  error_document = var.error_document

  tags = {
    Name = var.name
    Environment = var.environment
    Stack = var.stack
    Type = "static-website-hosting"
  }
}