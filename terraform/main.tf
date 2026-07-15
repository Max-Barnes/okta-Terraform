
module "app" {
    source = "./modules/apps"
    
    name = "name"
    type = "yourtype"
    uri = "http://localhost:4180/oauth2/callback"
    group = "Dev"
}

