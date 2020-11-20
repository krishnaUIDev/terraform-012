// to identify which provider it is 
provider "aws" {
   region = "us-east-1"
}
// created first resource 
resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
}

