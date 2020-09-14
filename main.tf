resource "digitalocean_droplet" "this" {
  name        = var.name
  region      = var.region
  image       = var.droplet_image
  size        = var.droplet_size
  backups     = var.backups
  monitoring  = var.monitoring
  ipv6        = var.ipv6
  vpc_uuid    = var.vpc_uuid == "" ? null : var.vpc_uuid
  ssh_keys    = var.ssh_keys
  resize_disk = var.resize_disk
  tags        = var.tags
  volume_ids  = []
  user_data = templatefile("${path.module}/userdata.tpl.sh", {
    unifi_version = var.unifi_version
    fqdn          = var.fqdn
    email         = var.email
  })
}
