terraform {
  backend "s3" {
    bucket = "bucketmay5"
    key    = "terraform/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "Terraform_lock"
  }
}
