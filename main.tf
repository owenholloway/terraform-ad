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
  first     = "Test"
  last      = "Zero"
  logon     = "test.zero"
}

module "test_user_1" {
  source    = "./modules/standard_user"
  first     = "Test"
  last      = "One"
  logon     = "test.one"
}