module "demo1" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-controltower-demo1@cloud-plant.com"
    AccountName               = "demo1-aft"
    ManagedOrganizationalUnit = "Sandbox1"
    SSOUserEmail              = "aws-controltower-demo1@cloud-plant.com"
    SSOUserFirstName          = "Demo1"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "demo"
}

module "demo2" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-controltower-demo2@cloud-plant.com"
    AccountName               = "demo2-aft"
    ManagedOrganizationalUnit = "Sandbox1"
    SSOUserEmail              = "aws-controltower-demo2@cloud-plant.com"
    SSOUserFirstName          = "Demo2"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "demo"
}
