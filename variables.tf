variable "cluster_name" {
  type        = string
  description = "eks clsuter name"
}
variable "eks_cluster_name"{
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
  description = "Desired number of worker nodes"
}

variable "max_nodes" {
  description = "Maximum number of worker nodes"
}

variable "min_nodes" {
  description = "Minimum number of worker nodes"
}

variable "max_unavailable" {
  description = "Number of instance can be unavailable during updates"
}

variable "node_termination_policy" {
  type        = list(string)
  description = "termination policy for node groups"
}
variable "capacity_type" {
  type        = string
  description = "type of ec2 instances"
}
variable "spot_discount_percentage" {
  description = "discount of spot instances rather than on-demand instances"
}