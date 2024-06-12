provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "42e7bf2b-4109-4c89-b188-01f0c9dc38d3"
    git_commit           = "49bfda6057a003282a81bb18c4f3ab803604e7dd"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-06-12 16:02:31"
    git_last_modified_by = "91092474+nidhinsam10@users.noreply.github.com"
    git_modifiers        = "91092474+nidhinsam10"
    git_org              = "nidhinsam10"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

