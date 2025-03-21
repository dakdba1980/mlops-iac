# provider "aws" {
#     region = "us-west-2"
# }

# resource "aws_instance" "example" {
#     ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI
#     instance_type = "t2.micro"

#     tags = {
#         Name = "example-instance"
#     }
# }

# module "eks" {
#     source          = "terraform-aws-modules/eks/aws"
#     cluster_name    = "example-cluster"
#     cluster_version = "1.21"
#     subnets         = ["subnet-0123456789abcdef0", "subnet-0123456789abcdef1"]
#     vpc_id          = "vpc-0123456789abcdef0"

#     node_groups = {
#         example = {
#             desired_capacity = 1
#             max_capacity     = 2
#             min_capacity     = 1

#             instance_type = "t2.micro"
#         }
#     }
# }