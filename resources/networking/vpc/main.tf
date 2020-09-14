/*
* Create a simple client-workload vpc
*/


# configure the aws provider
provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1" # N.Virginia
}


# create a vpc
resource "aws_vpc" "client_workload" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "client-workload"
  }
}