terraform{
    required_providers {
      aws = {
        source= "hashicorp/aws"
        //version = "~> 2.0"
      }
      
    }
}


provider "aws"{
   region = "ap-south-1"
}


resource "aws_instance" "module-aws-instance" {
  ami = var.amiin
  instance_type = var.itype
  tags = {
    "name" = var.name
  }
}
