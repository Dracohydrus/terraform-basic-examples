locals {
  # Hard coded local variable
  repo_name = "my-repo"

  # Local variable using variables passed in
  resource_prefix = "${var.project}-${var.environment}"
}
