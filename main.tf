module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.1.1"

  name = "three-tier-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  single_nat_gateway = true

  tags = {
    Name = "three-tier-vpc"
  }
}

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.20.0"

  cluster_name    = "three-tier-cluster"
  cluster_version = "1.28"

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  enable_irsa = true
  create_cloudwatch_log_group = false

  eks_managed_node_groups = {
    default = {
      name           = "default"
      instance_types = ["t3.micro"]
      capacity_type  = "ON_DEMAND"

      desired_size = 1
      min_size     = 1
      max_size     = 2
    }
  }

  tags = {
    Environment = "dev"
    Terraform   = "true"
  }
}