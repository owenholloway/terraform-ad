resource "ad_group" "group_example" {
  name             = "group example"
  sam_account_name = "group_example"
  scope            = "global"
  category         = "security"
  container        = var.container
}