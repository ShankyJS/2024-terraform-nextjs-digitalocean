variable "domain_name" {
  description = "Name of the domain hosted in Cloudflare"
  type        = string
}

variable "record_name" {
  description = "Name of the subdomain that is going to be pointing to the DO App"
  type        = string
}

variable "record_value" {
  description = "Value where the DNS record is going to be pointing at"
  type        = string
}

variable "record_type" {
  description = "Record type value, usually we are going with A but this could also be CNAME"
  type        = string
}

variable "ttl" {
  description = "TTL for DNS record"
  type        = number
}