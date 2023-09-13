# Optional Variable
variable "environment" {
  description = "The environment to deploy"
  default     = "staging"
}

variable "project" {
  description = "The project name to use for the Route 53 record"
  default     = "my-project"
}

# Required variable
variable "domain_name" {
  description = "The domain name to use for the Route 53 record"
}
