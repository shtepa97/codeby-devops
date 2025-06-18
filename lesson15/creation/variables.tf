variable "vpc_id" {
  description = "ID of the VPC where the VM will be created"
  type        = string
}

variable "zone" {
  description = "Availability zone where the VM should be created"
  type        = string
}

variable "instance_type" {
  description = "Type of the EC2 instance"
  type        = string
  default     = "t3.micro"
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}
