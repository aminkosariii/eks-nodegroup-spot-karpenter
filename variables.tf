variable "region" {
  type        = string
  description = "default region of aws"
}

variable "cluster_name" {
  type        = string
  description = "eks clsuter name"
}
variable "eks_cluster_name" {
  type = string
}
variable "vpc_name" {
  type        = string
  description = "Name of VPC"
}

variable "vpc_cidr" {
  type        = string
  description = "The CIDR block for the VPC"
}

variable "public_subnets" {
  type        = list(string)
  description = "List of public subnets"
}

variable "private_subnets" {
  type        = list(string)
  description = "List of private subnets"
}
variable "availability_zones" {
  type        = list(string)
  description = "List of availability zones"
}



variable "instance_types" {
  type        = string
  description = "List of instance types associated with the EKS Node Group"
}

variable "disk_size" {
  description = "Disk Size for Worker Nodes in GiB"
}

variable "desired_nodes" {
  type = number

  description = "Desired number of worker nodes"
}

variable "max_nodes" {
  type = number

  description = "Maximum number of worker nodes"
}

variable "min_nodes" {
  type = number

  description = "Minimum number of worker nodes"
}

variable "max_unavailable" {
  type = number

  description = "Number of instance can be unavailable during updates"
}


variable "capacity_type" {
  type        = string
  description = "type of ec2 instances"
}
