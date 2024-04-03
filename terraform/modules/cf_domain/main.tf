# Add a record to the domain
resource "cloudflare_record" "this" {
  zone_id = data.cloudflare_zone.this.id
  name    = var.record_name
  value   = var.record_value
  type    = var.record_type
  ttl     = var.ttl
}
