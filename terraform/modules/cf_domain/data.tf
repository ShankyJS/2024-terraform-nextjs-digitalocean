# Brings the Zone to Terraform state to manipulate records
data "cloudflare_zone" "this" {
  name = var.domain_name
}
