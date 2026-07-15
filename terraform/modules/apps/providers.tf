terraform {
    required_providers {
      okta = {
        source = "okta/okta"
        version = "~> 6.13"
      }
    }
}

# Supply environment variables for those values in production

provider "okta" {
    # org_name = var.orgname
    # base_url = "okta.com"
    # client_id = var.clientid
    # private_key_id = var.privatekid
    # private_key = var.privatekey

    # scopes = ["okta.groups.manage", "okta.users.manage", "okta.apps.manage"]
}

