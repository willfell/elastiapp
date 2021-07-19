# Variables

variable "access_key" {
  default = ""
}
variable "secret_key" {
  default = ""
}
variable "region" {
  default = "us-west-2"
}
variable "availability_zone" {
  default = "us-east-2a"
}
variable "cidr_block_range" {
  description = "The CIDR block for the VPC"
  default     = "10.1.0.0/16"
}
variable "subnet1_cidr_block_range" {
  description = "The CIDR block for public subnet of VPC"
  default     = "10.1.0.0/24"
}
variable "subnet2_cidr_block_range" {
  description = "The CIDR block for private subnet of VPC"
  default     = "10.2.0.0/24"
}
variable "environment_tag" {
  description = "Environment tag"
  default     = ""
}
variable "public_key_path" {
  description = "Public key path"
  default     = "~/.ssh/id_rsa.pub"
}

variable "solution_stack" {
  description = "Stack used for the beans"
  default     = "64bit Amazon Linux 2 v5.4.2 running Node.js 14"
}