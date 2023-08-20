######################## log_bucket output #########################

output "log_bucket_id" {
    description = "s3 bucket for logs"
    value = aws_s3_bucket.main_log_bucket.id
}