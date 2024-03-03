resource "random_password" "password" {
  length           = 24
  special          = true
  lower            = true
  numeric          = true
  upper            = true
  min_lower        = 4
  min_upper        = 4
  min_numeric      = 4
  min_special      = 4
  override_special = "!#$%&*()-_=+[]{}<>:?"
}