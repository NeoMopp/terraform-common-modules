resource "aws_s3_bucket" "tf_state_bucket" {
  bucket = "${var.stack}-${var.environment}-tf-state"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name = "tf-state"
    Environment = var.environment
    Stack = var.stack
    Type = "state-bucket"
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = var.kms_key_id
        sse_algorithm     = var.sse_algorithm
      }
    }
  }
}

resource "aws_dynamodb_table" "tf_state_lock_table" {
  name         = "${var.stack}-${var.environment}-tf-state-lock"
  hash_key     = "LockID"
  billing_mode = "PAY_PER_REQUEST"

  attribute {
    name = "LockID"
    type = "S"
  }

  server_side_encryption {
    enabled = true
  }

  tags = {
    Name = "tf-state-lock"
    Environment = var.environment
    Stack = var.stack
    Type = "state-dynamodb"
  }
}

