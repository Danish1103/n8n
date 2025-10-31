variable "aws_region" {
  description = "AWS region to deploy to"
  default     = "ap-south-1"
}

variable "ami_id" {
  description = "AMI ID for Ubuntu 22.04 in your region"
  default     = "ami-02d26659fd82cf299" # Ubuntu 22.04 LTS for ap-south-1
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t3.micro"
}

variable "n8n_user" {
  description = "n8n basic auth username"
  default     = "admin"
}

variable "n8n_password" {
  description = "n8n basic auth password"
  default     = "changeme"
}

variable "common_tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default = {
    Project     = "n8n"
    Environment = "Dev"
    Owner       = "Danish"
  }
}