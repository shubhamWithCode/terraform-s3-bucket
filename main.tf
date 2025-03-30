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