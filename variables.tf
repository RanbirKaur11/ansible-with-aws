variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ap-southeast-2" # Australia East (Sydney)
}

variable "availability_zone" {
  description = "Availability zone for subnet"
  type        = string
  default     = "ap-southeast-2a"
}

variable "vpc_cidr" {
  description = "CIDR for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "instance_type" {
  description = "Instance type for EC2"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "SSH key name already in AWS"
  type        = string
}

variable "vm_count" {
  description = "Number of EC2 instances"
  type        = number

}

variable "roles" {
  description = "Roles assigned to EC2 instances by index"
  type        = list(string)

}