resource "ad_group" "group_example" {
  name             = "group example"
  sam_account_name = "group_example"
  scope            = "global"
  category         = "security"
  container        = var.container
}

# Group Membership
resource "ad_group_membership" "group_example_members" {
  group_id      = ad_group.group_example.id
  depends_on = [ 
    module.test_user_0,
    module.test_user_1,
    module.test_user_2,
    ]
  group_members = [
    module.test_user_0.user_id,
    module.test_user_1.user_id,
    module.test_user_2.user_id,
  ]
}