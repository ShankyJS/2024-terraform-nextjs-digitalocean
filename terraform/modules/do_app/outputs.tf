output "live_url" {
  value = digitalocean_app.this.live_url
}

output "default_ingress" {
  value = replace(digitalocean_app.this.default_ingress, "https://", "")
}
