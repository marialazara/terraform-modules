variable "vpc_id" {
  description = "The ID of the VPC to associate with the route table"
  type        = string
  
}

variable "cidr_block" {
  description = "The CIDR block for the route"
  type        = string
  
}

variable "gateway_id" {
  description = "The ID of the internet gateway to route traffic through"
  type        = string
  
}

variable "tags" {
  description = "A map of tags to assign to the route table"
  type        = map(string)
  default     = {}
  
}

variable "subnet_id_rt" {
  description = "The ID of the subnet to associate with the route table"
  type        = string
  
}