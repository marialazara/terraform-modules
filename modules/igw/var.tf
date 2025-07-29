variable "vpc_id" {
  description = "The ID of the VPC where the route table will be created"
  type        = string  
  
}

variable "tags" {
  description = "A map of tags to assign to the internet gateway"
  type        = map(string)
  default     = {}  
  
}