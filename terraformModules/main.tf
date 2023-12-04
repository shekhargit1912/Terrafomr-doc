provider "aws" {
    region = "us-east-1"
}


module "ec2_instance" {
    source = "./modules/ec2_instance"
    ami_value = "ami-ID"
    instance_type_value = "t2.micro"
}

#dev need to write the main.tf file for the module ec2_instance and the variables.tf file for the module ec2_instance if needed 


