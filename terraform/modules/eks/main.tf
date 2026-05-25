module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.0.0"

  cluster_name    = var.cluster_name
  cluster_version = "1.32"

  vpc_id     = var.vpc_id
  subnet_ids = var.private_subnets

  cluster_endpoint_public_access = true

  eks_managed_node_groups = {
    on_demand = {
      min_size       = 1
      max_size       = 5
      desired_size   = 2
      instance_types = ["t3.medium"]
      capacity_type  = "ON_DEMAND"
    }
    spot = {
      min_size       = 1
      max_size       = 10
      desired_size   = 2
      instance_types = ["t3.medium", "t3.large"]
      capacity_type  = "SPOT"
    }
  }

  tags = {
    Environment = var.environment
  }
}
