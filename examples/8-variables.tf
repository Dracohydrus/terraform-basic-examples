# Optional Variable
variable "environment" {
  description = "The environment to deploy"
  default     = "staging"
}

# Required variable
variable "domain_name" {
  description = "The domain name to use for the Route 53 record"
}
