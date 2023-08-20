resource "aws_s3_bucket" "main_log_bucket" {
  bucket = "my-main-logs-bucket-test1"
}

resource "aws_s3_bucket" "log_bucket" {
  bucket = "my-test-logs-bucket"


  logging {
    target_bucket = aws_s3_bucket.main_log_bucket.id
    target_prefix = "log/"
  }
}