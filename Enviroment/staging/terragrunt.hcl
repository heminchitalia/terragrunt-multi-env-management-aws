terraform {
    source = "git::git@github.com:heminchitalia/aws-vpc-network-terraform.git//modules/VPC?ref=v1.0.0"
}

include "root" {
    path = find_in_parent_folders()
}

inputs = {
    region_name = "us-east-2"
    public_az = ["us-east-2a", "us-east-2b"]
    private_az = ["us-east-2a", "us-east-2b"]
    enviroment = "Staging"
}