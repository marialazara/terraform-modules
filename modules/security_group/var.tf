variable "name" {
  description = "The name of the security group"
  type        = string

}

variable "description" {
  description = "Description of the security group"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC where the security group will be created"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the security group"
  type        = map(string)
  default     = {}

}

variable "sg_ingress_cidr_ipv4" {
  description = "The CIDR block for the security group ingress rule (IPv4)"
  type        = string
  default     = "0.0.0.0/0"
}

variable "sg_ingress_from_port" {
  description = "The starting port for the security group ingress rule"
  type        = number
  default     = 443
}

variable "sg_ingress_ip_protocol" {
  description = "The IP protocol for the security group ingress rule"
  type        = string
  default     = "tcp"
}


variable "sg_egress_cidr_ipv4" {
  description = "The CIDR block for the security group egress rule (IPv4)"
  type        = string
  default     = "0.0.0.0/0"
}

variable "sg_egress_from_port" {
  description = "The starting port for the security group egress rule"
  type        = number
  default     = 0
}

variable "sg_egress_ip_protocol" {
  description = "The IP protocol for the security group egress rule"
  type        = string
  default     = "tcp"
}

