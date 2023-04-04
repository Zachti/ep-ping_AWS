module "vpc" {
    source = "terraform-aws-modules/vpc/aws"

    name = var.vpc_name
    cidr = var.cidr

    private_subnets = var.private_subnets
    public_subnets = var.public_subnets
    azs = var.azs

    enable_nat_gateway = true
    single_nat_gateway = true
    one_nat_gateway_per_az = false
}