provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "git_demo" {
  bucket = "git-demo-${random_id.suffix.hex}"
  acl    = "private"

  tags = {
    Name = "Git-Demo12345"
  }
}

resource "random_id" "suffix" {
  byte_length = 4
}

