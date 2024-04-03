terraform {
  required_version = "v1.7.5"
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.36.0"
    }
  }
}
