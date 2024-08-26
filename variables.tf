variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"

}

variable "web_subnet" {
  description = "The CIDR block for the web subnet"
  type        = string
  default     = "10.0.1.0/24"

}

variable "availability_zone" {
  description = "The availability zone for the subnet"
  type        = string
  default     = "eu-central-1a"

}

variable "region" {
  description = "The region for the VPC"
  type        = string
  default     = "eu-central-1"

}

variable "main_vpc_name" {
  description = "The name of the VPC"
  type        = string
  default     = "Main VPC"

}
