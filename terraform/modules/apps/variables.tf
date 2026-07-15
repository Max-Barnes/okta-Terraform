variable "name" {
    description = "Name for your app integration"
}

variable "type" {
    description = "type of client application"
}

variable "uri" {
    # default = ["http://localhost:4180/oauth2/callback"]
    type = list(string)
    description = "Okta sends the authentication response and ID token for the user's sign-in request to these URIs. For this demo set this to your okta host uri"
}

variable "group" {
    description = "Okta group who is allowed access to your app"
}