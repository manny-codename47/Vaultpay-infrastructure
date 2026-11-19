resource "aws_s3_bucket" "emmanuel-tf-learning-bucket" {
  bucket = "emmanuel-tf-learning-bucket"

  tags = {
    project = "terraform-learning"
    owner   = "emmanuel"
  }
}

resource "aws_s3_bucket_versioning" "emmanuel-tf-learning-bucket-object" {
  bucket = aws_s3_bucket.emmanuel-tf-learning-bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}