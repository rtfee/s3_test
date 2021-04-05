provider "aws" {
  region     = var.region
}

resource "aws_s3_bucket" "scalr" {
  bucket = var.bucket_name
  acl    = "private"

  tags = {
    Name        = var.bucket_name_tag
    Environment = "Dev"
  }
}
