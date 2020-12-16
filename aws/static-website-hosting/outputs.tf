output "s3_bucket_name" {
  value = aws_s3_bucket.static_website_hosting.id
}

output "s3_bucket_arn" {
  value = aws_s3_bucket.static_website_hosting.arn
}