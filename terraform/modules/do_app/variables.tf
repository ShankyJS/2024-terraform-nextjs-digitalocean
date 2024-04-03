variable "app_name" {
  description = "Name of the application"
  type        = string
}

variable "region" {
  description = "Region where the application will be deployed"
  type        = string
  validation {
    condition     = can(regex("^tor$", var.region))
    error_message = "Region must be 'tor'"
  }
}

variable "machine_type" {
  description = "Machine type for the application"
  type        = list(string)
}

variable "build_command" {
  description = "Command to build the application"
  type        = string
}

variable "environment_slug" {
  description = "Environment slug for the application"
  type        = string
}

variable "http_port" {
  description = "HTTP port for the application"
  type        = number
}

variable "instance_count" {
  description = "Number of instances for the application"
  type        = number
  validation {
    condition     = var.instance_count > 0
    error_message = "Instance count must be greater than 0"
  }
}

variable "instance_size_slug" {
  description = "Size slug for the instances"
  type        = string
}

variable "internal_ports" {
  description = "Internal ports for the application"
  type        = list(number)
  default     = []
}

variable "run_command" {
  description = "Command to run the application"
  type        = string
}

variable "source_dir" {
  description = "Source directory for the application"
  type        = string
}

variable "github_config" {
  description = "GitHub configuration for the application"
  type = object({
    branch         = string
    deploy_on_push = bool
    repo           = string
  })
}

variable "domain_name" {
  description = "Name of the domain hosted in Cloudflare"
  type        = string
}

variable "record_name" {
  description = "Name of the subdomain that is going to be pointing to the DO App"
  type        = string
}
