########################################################
#### Main variables needed to configure project ########
########################################################

variable "do_api_token" {
  description = "Contains the DigitalOcean token to authenticate with Terraform"
  type        = string
  sensitive   = true
}

variable "cf_api_token" {
  description = "Contains the Cloudflare token to authenticate with Terraform"
  type        = string
  sensitive   = true
}

variable "domain_name" {
  description = "Name of the domain hosted in Cloudflare"
  type        = string
}

variable "record_name" {
  description = "Name of the subdomain that is going to be pointing to the DO App"
  type        = string
}
