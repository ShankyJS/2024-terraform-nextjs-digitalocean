output "cf_fqdn" {
  value = cloudflare_record.this.hostname
}
