variable "name" {}

variable "fqdn" {
  description = "If provided with email, will provision LetsEncrypt certs using an HTTP challenge using this hostname"
  default     = ""
}

variable "email" {
  description = "If provided with fqdn, will provision LetsEncrypt certs using an HTTP challenge using this email for registration"
  default     = ""
}

variable "unifi_version" {
  description = "Version of Unifi controller to install"
  default     = "5.14.23"
}

variable "region" {
  description = "DigitalOcean reigon slug (e.g. nyc1)"
}

variable "tags" {
  type        = list(string)
  description = "List of DigitalOcean tags to apply to created resources"
  default     = []
}

variable "droplet_image" {
  description = "Droplet image slug"
  default     = "debian-10-x64"
}

variable "droplet_size" {
  description = "Droplet size slug"
  default     = "s-1vcpu-1gb"
}

variable "vpc_uuid" {
  description = "If set, will place droplet in VPC"
  default     = ""
}

variable "backups" {
  type        = bool
  default     = true
  description = "Enable to create backups of the droplet (Does not backup the volume)"
}

variable "resize_disk" {
  type        = bool
  description = "If true, resizes the disk during a droplet size change"
  default     = false
}

variable "monitoring" {
  type        = bool
  default     = true
  description = "Enables monitoring on the droplet"
}

variable "ipv6" {
  type        = bool
  default     = false
  description = "Enables IPv6 on the droplet"
}

variable "ssh_keys" {
  type        = list(string)
  description = "List of SSH key IDs/fingerprints to enable on the droplet"
  default     = []
}
