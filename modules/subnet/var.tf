variable "vpc_id" {
  description = "The ID of the VPC where the security group will be created"
  type        = string

}

variable "subnet_cidr_block" {
  description = "The CIDR block for the subnet"
  type        = string
  default     = "10.0.0.0/24"
}

variable "tags" {
  description = "A map of tags to assign to the subnet"
  type        = map(string)

}