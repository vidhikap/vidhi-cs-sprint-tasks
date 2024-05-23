{% set var = inventory.parameters.tfvars %}

provider "aws" {
  region = "{{var.region}}"
}
variable "username" {
  description = "The username to use as part of the S3 bucket name"
  type        = string
}

resource "aws_s3_bucket" "task4-bucket" {
  bucket = "${var.username}-{{ var.bucket_name}}"

  tags = {
    Name        = "${var.username}-{{ var.bucket_name}}"
  }
}
