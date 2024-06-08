resource "aws_s3_bucket" "vulnerable_bucket" {
  bucket = "vulnerable-bucket-example-unique"  # Use a unique bucket name

  tags = {
    Name = "vulnerable-s3-bucket"
  }
}