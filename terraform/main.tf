########################################################
######## Creating a NextJS app with DigitalO ###########
########################################################

module "do_app" {
  source             = "./modules/do_app"
  app_name           = "cncf-blog"
  region             = "tor"
  machine_type       = ["buildpack-stack=ubuntu-22"]
  build_command      = "npm run build"
  environment_slug   = "node-js"
  http_port          = 8080
  instance_count     = 1
  instance_size_slug = "professional-xs"
  run_command        = "npm run start"
  source_dir         = "blog"
  github_config = {
    branch         = "master"
    deploy_on_push = true
    repo           = "ShankyJS/2024-terraform-nextjs-digitalocean"
  }
  domain_name = var.domain_name
  record_name = var.record_name

}

module "cf_domain" {
  depends_on   = [module.do_app]
  source       = "./modules/cf_domain"
  domain_name  = var.domain_name
  record_name  = var.record_name
  record_value = module.do_app.default_ingress
  record_type  = "CNAME"
  ttl          = 60
}