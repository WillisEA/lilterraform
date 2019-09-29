
variable "newvariable" {
  type    = "string"
  default = "thisisvalue"
}
variable "maptype" {

  type = "map"
  default = {
    subnet1 = "subnet1"
    subnet2 = "subnet2"
    subnet3 = "subnet3"
  }

}
variable "listtype" {
  type    = "list"
  default = ["item1", "item2", "item3"]
}

variable network_name {
  default     = "thenewnetwork"
  type        = "string"
  description = "Just the new network name"
}

variable aws_ip_cidr_range {
  default     = "10.0.0.0/17"
  type        = "string"
  description = "IP CIDR Range for AWS VPC"
}

// Output Variables


output "aws_cidr_subnet1" {
  value = "${aws_subnet.subnet1.cidr_block}"
}