provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "example" {
    ami           = "ami-ID"
    instance_type = "t2.micro"
    tags = {
        Name = "terraform-learn1"
    }
}



resource "aws_s3_bucket" "s3_bucket" {
    bucket = "shekhar-s3-state-demo"

  
}

resource "aws_dynamodb_table" "terraform_lock" {
    name           = "terraform_lock"
    
    billing_mode   = "PAY_PER_REQUEST"
    hash_key       = "LockID"
    attribute {
        name = "LockID"
        type = "S"
    }
  
}

