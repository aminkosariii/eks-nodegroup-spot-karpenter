# Terraform code for eks-nodegroup-spot-karpenter <br />
EKS -> Amazon Elastic Kubernetes Service <br />
EKS Managed Node group <br />
Karpenter -> intelligent compute provisioning -  super fast cluster node scaler <br />
EC2 spot instances 

in this configuration we want create eks cluster with managed node groups(handle by AWS). Then add Karpenter configuration to EKS for managing the nodes intelligently and cost effectively. We use spot instances for better cost optimization and Karpenter handle the situation when one of spots goes down.

 
