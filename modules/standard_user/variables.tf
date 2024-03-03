variable "first" {
  type = string
}

variable "last" {
  type = string
}

# variable "email" {
#   type = string
# }

variable "logon" {
  type = string
}

variable "container" {
  type    = string
  default = "CN=Users,DC=contoso,DC=com"
}

variable "disabled" {
  type    = bool
  default = false
}

variable "password_never_expires" {
  type    = bool
  default = true
}