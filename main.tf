provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "./modules/vpc"
  
  vpc_cidr             = "10.0.0.0/16"
  vpc_name             = "my-vpc"
  availability_zones   = ["us-east-1a", "us-east-1b"]
  public_subnet_1      = "10.0.1.0/24"
  public_subnet_2      = "10.0.2.0/24"
  private_subnet_1     = "10.0.3.0/24"
  private_subnet_2     = "10.0.4.0/24"
}
