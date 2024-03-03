provider "ad" {
  # Assumes being run on the ADDC
  winrm_hostname = var.ad_credentials.winrm_hostname
  winrm_username = var.ad_credentials.winrm_username
  winrm_password = var.ad_credentials.winrm_password
}