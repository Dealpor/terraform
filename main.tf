provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "remote_state" {
  instance_type = "t2.micro"
  ami = "ami-0a017b44ffa4a83de"
  tags = {
    Name = var.instance_name
  }
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform_lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "s"
  }
}