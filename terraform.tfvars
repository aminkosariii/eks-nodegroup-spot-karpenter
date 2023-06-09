region                   = "eu-central-1"
vpc_cidr                 = "10.0.0.0/16"
cluster_name             = "parvin"
vpc_name                 = "parvin"
eks_cluster_name         = "parvin"
private_subnets          = ["10.0.0.0/19", "10.0.32.0/19"]
public_subnets           = ["10.0.64.0/19", "10.0.96.0/19"]
availability_zones       = ["eu-central-1a", "eu-central-1b"]
instance_types           = "t3.medium"
disk_size                = 10
desired_nodes            = 2
max_nodes                = 3
min_nodes                = 2
max_unavailable          = 1
capacity_type            = "SPOT"

