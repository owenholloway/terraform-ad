variable "container" { default = "CN=Users,DC=contoso,DC=com" }

variable "ad_credentials" {
  type = map(string)
  default = {
    "winrm_hostname" = "test"
    "winrm_username" = "test"
    "winrm_password" = "test"
  }
}