provider "aws" {
   region = "us-east-1"
}
// strings
variable "vpcname" {
  type = string
  default = "myvpc"
}
// number
variable "sshport" {
  type = number
  default = 22
}
// bool

variable "enabled" {
    default = true
}

// list 

variable "mylist" {
  type = list(string)
  default = ["value1", "value2"]
}

// maps

variable "mymap" {
    type = map
    default = {
        key1 = "Value1"
        key2 = "Value2"
    }
}

// inputs

variable "inputName" {
    type = string
    description = "Set the name of the VPC"
}

resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = var.vpcname
    // Name = var.mylist[0] to access list
    // Name = var.mymap["Key1"] to access key 1
    // Name = var.inputName  
   }
}