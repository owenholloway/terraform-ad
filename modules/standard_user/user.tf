variable container      { default = "CN=Users,DC=contoso,DC=com" }

resource "ad_user" "operational_user" {
  principal_name            = "${var.first} ${var.last}"
  sam_account_name          = var.logon
  display_name              = "${var.first} ${var.last}"
  container                 = var.container
  initial_password          = random_password.password.result
  city                      = "My City"
  company                   = "The Company Co Pty Ltd"
  country                   = "AU"
  department                = "Engineering"
  description               = "User ${var.first} ${var.last}"
  division                  = "DevOps"
  email_address             = "${var.first}.${var.last}@organisation.com"
  employee_id               = "00"
  employee_number           = "00"
  fax                       = "N/A"
  given_name                = var.first
  home_directory            = "N/A"
  home_drive                = "N/A"
  home_phone                = "N/A"
  home_page                 = "N/A"
  initials                  = ""
  mobile_phone              = "N/A"
  office                    = "N/A"
  office_phone              = "N/A"
  organization              = "The Organisation"
  other_name                = ""
  po_box                    = ""
  postal_code               = "1420"
  state                     = "TAS"
  street_address            = "12 Place St"
  surname                   = var.last
  title                     = ""
  smart_card_logon_required = false
  trusted_for_delegation    = true
}