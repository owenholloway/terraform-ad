terraform {
  # required_providers {
  #   ad = {
  #     source  = "hashicorp/ad"
  #     version = "0.4.4"
  #   }
  # }
}

# provider "ad" {
#   # Assumes being run on the ADDC
#   # winrm_hostname = ""
#   # winrm_username = ""
#   # winrm_password = ""
# }

module "test_user_0" {
  source    = "./modules/standard_user"
  first     = "test"
  last      = "user"
  logon     = "test"
  email     = "test@test.com"
}

module "test_user_1" {
  source    = "./modules/standard_user"
  first     = "test"
  last      = "user"
  logon     = "test"
  email     = "test@test.com"
}