terraform {
  backend "s3" {
    bucket = "lohan-terraform-state"
    key    = "iac-calculator-coodesh-challenge/terraform.state"
    region = "us-east-1"
  }
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
}