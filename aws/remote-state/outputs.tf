output "s3_bucket_name" {
  value = aws_s3_bucket.tf_state_bucket.id
}

output "s3_bucket_arn" {
  value = aws_s3_bucket.tf_state_bucket.arn
}

output "dynamo_db_name" {
  value = aws_dynamodb_table.tf_state_lock_table.id
}

output "dynamo_db_arn" {
  value = aws_dynamodb_table.tf_state_lock_table.arn
}