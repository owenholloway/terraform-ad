terraform {
  # required_providers {
  #   ad = {
  #     source  = "hashicorp/ad"
  #     version = "0.4.4"
  #   }
  # }
}

provider "ad" {
  # Assumes being run on the ADDC
  winrm_hostname = "test"
  winrm_username = "test"
  winrm_password = "test"
}

module "test_user_0" {
  source = "./modules/standard_user"
  first  = "Test"
  last   = "Zero"
  logon  = "test.zero"
}

module "test_user_1" {
  source = "./modules/standard_user"
  first  = "Test"
  last   = "One"
  logon  = "test.one"
}

module "test_user_2" {
  source   = "./modules/standard_user"
  first    = "Test"
  last     = "Two"
  logon    = "test.two"
  disabled = true
}