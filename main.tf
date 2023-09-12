provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_sqs_queue" "terraform_queue" {
  count = "${var.numero}"
  
  name                      = "${format("terraform-example-queue-%03d", count.index + 1)}"

  tags = {
    Environment = "production"
  }
}