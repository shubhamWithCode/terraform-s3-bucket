resource "aws_s3_bucket" "nike-main-bucket" {
  bucket = "nike-terraform-tfstate-file-bucket"
  tags = {
    Name = "nike-main-bucket"
    Env = "Dev"
    Owner = "Shubham"
  }

}

resource "aws_s3_bucket_versioning" "nike-bucket-versioning-status" {
  bucket = aws_s3_bucket.nike-main-bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

//dynamodb table to lock/unlock resources.
/*
resource "aws_dynamodb_table" "terraform_locks" {
  name = "terraform-locks"
  hash_key = "LockID"
  billing_mode = "PAY_PER_REQUEST"
  attribute {
    name = "LockID"
    type = "S"
  }
}
*/