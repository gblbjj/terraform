resource "aws_s3_bucket" "capacity-terraform-remote-state" {
  bucket = "labs-terraform-remote-state"

}

resource "aws_s3_bucket_acl" "capacity-terraform-remote-state" {
  bucket = aws_s3_bucket.capacity-terraform-remote-state.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "capacity-terraform-remote-state-versioning" {
  bucket = aws_s3_bucket.capacity-terraform-remote-state.id
  versioning_configuration {
    status = "Enabled"
  }
}