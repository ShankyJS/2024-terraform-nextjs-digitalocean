terraform {
  required_version = "v1.7.5"
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.36.0"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.29.0"
    }
  }
}


# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = var.do_api_token
}

# Configure the Cloudflare Provider
provider "cloudflare" {
  api_token = var.cf_api_token
}