terraform {
  backend "s3" {
    bucket = "shekhar-s3-state-demo"
    region = "us-east-1"
    key    = "shekhar/terraform.tfstate"
    #dynamodb_table = "terraform_lock"
    
  }
}
