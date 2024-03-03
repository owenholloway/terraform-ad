terraform {
  required_providers {
    ad = {
      source  = "hashicorp/ad"
      version = "0.4.4"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.0"
    }
  }
}

provider "ad" {
  # Assumes being run on the ADDC
  winrm_hostname = "test"
  winrm_username = "test"
  winrm_password = "test"
}