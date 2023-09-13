# Get an exiting IAM role
data "aws_iam_role" "s3_bucket_access" {
  name = "rp-s3BucketAccess"
}

# Get an exiting S3 bucket from SSM parameter
data "aws_ssm_parameter" "s3_bucket_name" {
  name = "/rp/s3BucketName"
}

# How you can reference the data blocks
# data.aws_ssm_parameter.s3_bucket_name.value
# data.aws_iam_role.s3_bucket_access.arn
