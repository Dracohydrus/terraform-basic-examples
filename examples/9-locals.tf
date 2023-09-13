locals {
  # Hard coded local variable
  repo_name = "my-project"

  # Local variable using variables passed in
  resource_prefix = "${var.project}-${var.environment}"
}

# How you can reference the local variables
# local.resource_prefix
