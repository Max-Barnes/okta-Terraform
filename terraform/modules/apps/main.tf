# output client id and client secret

resource "okta_app_oauth" "app" {
  label          = var.name
  type           = var.type
  grant_types    = ["authorization_code"]
  redirect_uris  = var.uri
  response_types = ["code"]
}

resource "okta_group" "group" {
  name = var.group
}

resource "okta_app_group_assignment" "engineering" {
  app_id   = okta_app_oauth.app.id
  group_id = okta_group.group.id
  priority = 1
}

output "client_id" {
    description = "Set me as environment variable OAUTH2_PROXY_CLIENT_ID"
    value = okta_app_oauth.app.client_id
}

output "client_secret" {
    description = "Set me as environment variable OAUTH2_PROXY_CLIENT_SECRET"
    value = okta_app_oauth.app.client_secret
}
