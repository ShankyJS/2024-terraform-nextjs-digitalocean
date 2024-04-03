resource "digitalocean_app" "this" {
  spec {
    name     = var.app_name
    region   = var.region
    features = var.machine_type
    domain {
      name = "${var.record_name}.${var.domain_name}"
    }

    service {
      build_command      = var.build_command
      environment_slug   = var.environment_slug
      http_port          = var.http_port
      instance_count     = var.instance_count
      instance_size_slug = var.instance_size_slug
      internal_ports     = var.internal_ports
      name               = var.app_name
      source_dir         = var.source_dir
      run_command        = var.run_command

      github {
        branch         = var.github_config["branch"]
        deploy_on_push = var.github_config["deploy_on_push"]
        repo           = var.github_config["repo"]
      }
    }
  }
}