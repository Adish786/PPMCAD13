# Provider / env
region      = "ap-southeast-1"
aws_profile = "default"   # Rely on terminal / env creds
env         = "dev"

# VPC
vpc_cidr             = "10.20.0.0/16"
public_subnet_cidrs  = ["10.20.1.0/24", "10.20.2.0/24"]
private_subnet_cidrs = ["10.20.11.0/24", "10.20.12.0/24"]

# ec2
ami_id           = "ami-093a7f5fbae13ff67" # CHANGE: replace with a valid AMI for your region
instance_type    = "t3.micro"
bastion_key_name = "demo-01"       # CHANGE: replace with your keypair name

# Storage
bucket_name = "myorg-learn-tf-dev-001"   # MUST be globally unique - CHANGE accordingly

# Optional tags (change or extend)
tags = {
  Owner = "platform-team"
  CostCenter = "dev"
}
