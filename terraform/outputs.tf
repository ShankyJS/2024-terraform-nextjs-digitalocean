########################################################
######## Generate output to create DNS entry ###########
########################################################

output "do_app_outputs" {
  value = module.do_app
}

output "cf_domain" {
  value = module.cf_domain
}
