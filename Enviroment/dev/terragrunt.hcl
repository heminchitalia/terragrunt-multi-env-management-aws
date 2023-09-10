terraform {
    source = "git::git@github.com:heminchitalia/aws-vpc-network-terraform.git//modules/VPC?ref=v1.0.0"
}

include "root" {
    path = find_in_parent_folders()
}

inputs = {
    region_name = "ap-south-1"
    public_az = ["ap-south-1a", "ap-south-1b"]
    private_az = ["ap-south-1a", "ap-south-1b"]
}