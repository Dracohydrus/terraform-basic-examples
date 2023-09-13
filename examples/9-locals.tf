locals {
  # Hard coded local variable
  repo_name = "my-project"

  # Local variable using variables passed in
  resource_prefix = "${var.project}-${var.environment}"
}

# local.resource_prefix
