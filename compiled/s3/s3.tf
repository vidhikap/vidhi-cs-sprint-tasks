
provider "aws" {
  region = "us-west-2"
}
variable "username" {
  description = "The username to use as part of the S3 bucket name"
  type        = string
}

resource "aws_s3_bucket" "task4-bucket" {
  bucket = "${var.username}-sprint-task-4"

  tags = {
    Name        = "${var.username}-sprint-task-4"
  }
}