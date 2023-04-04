module "aws_vpc" {
  source = "./modules/aws_vpc"
  vpc_name = "zach_vpc"
  cidr = "172.32.0.0/16"
  azs = ["us-east-1a" , "us-east-1b"]
  private_subnets = ["172.32.1.0/24","172.32.2.0/24"]
  public_subnets = ["172.32.101.0/24","172.32.102.0/24"]
}