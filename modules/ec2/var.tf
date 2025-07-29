# This file contains variable definitions for the EC2 module in Terraform.

variable "ami" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string

}
variable "instance_type" {
  description = "The type of instance to use for the EC2 instance"
  type        = string

}

variable "key_name" {
  description = "The name of the key pair to use for SSH access to the EC2 instance"
  type        = string
  default     = ""

}

variable "subnet_id" {
  description = "The ID of the subnet in which to launch the EC2 instance"
  type        = string

}
variable "tags" {
  description = "A map of tags to assign to the EC2 instance"
  type        = map(string)

}

variable "associate_public_ip_address" {
  description = "Whether to associate a public IP address with the EC2 instance"
  type        = bool
  default     = false

}
variable "availability_zone" {
  description = "The availability zone in which to launch the EC2 instance"
  type        = string
  default     = ""

}

## EBS configuration
variable "volume_size" {
  description = "The size of the Root EBS volume in GB"
  type        = number

}

variable "volume_type" {
  description = "The type of EBS volume to create"
  type        = string

}

variable "delete_on_termination" {
  description = "Whether to delete the EBS volume on instance termination"
  type        = bool
  default     = true

}
## IPv6 configuration
variable "enable_ipv6" {
  description = "Se deve habilitar IPv6 na instância"
  type        = bool
  default     = false
}

variable "ipv6_address_count" {
  description = "Quantidade de endereços IPv6"
  type        = number
  default     = 1
}

variable "security_group_id" {
  description = "The ID of the security group to associate with the EC2 instance"
  type        = string
  
}

variable "user_data" {
  description = "User data script to run on instance launch"
  type        = string
  default     = ""
  
}