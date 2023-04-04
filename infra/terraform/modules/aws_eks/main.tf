module "eks" {
  source                          = "terraform-aws-modules/eks/aws"
  version                         = "18.2.0"
  cluster_name                    = var.name
  cluster_version                 = var.cluster_version
  cluster_endpoint_private_access = true
  cluster_endpoint_public_access  = true
  vpc_id                          = var.vpc_id
  subnet_ids                      = var.vpc_private_subnet
  create_iam_role                 = true
  iam_role_arn                    = true
  enable_irsa                     = true
  eks_managed_node_group_defaults = {
    instance_types = var.instance_types
    disk_size      = var.disk_size
  }
  eks_managed_node_groups = {
    bar-first-group = {
      min_size     = var.nodes_num
      max_size     = var.nodes_num
      desired_size = var.nodes_num
    }
    bar-second-group = {
      min_size     = var.nodes_num
      max_size     = var.nodes_num
      desired_size = var.nodes_num
    }
  }
  node_security_group_additional_rules = {
    ingress_self_all = {
      description = "Node to node all ports/protocols"
      protocol = "-1"
      from_port = 0
      to_port = 0
      type = "ingress"
      self = true
    }
    egress_all = {
      description = "Node all egress"
      protocol = "-1"
      from_port = 0
      to_port = 0
      type = "egress"
      cidr_blocks = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    }
  }
}
