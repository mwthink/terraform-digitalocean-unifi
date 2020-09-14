# terraform-digitalocean-unifi
This module will provision a droplet on DigitalOcean that
runs the Unifi controller. 

This utilizes the community-created [Unifi Easy Installation Script](https://community.ui.com/questions/UniFi-Installation-Scripts-or-UniFi-Easy-Update-Script-or-UniFi-Lets-Encrypt-or-Ubuntu-16-04-18-04-/ccbc7530-dd61-40a7-82ec-22b17f027776)
to accomplish this.

## Usage
Simple use
```hcl
module "unifi" {
  source = "mwthink/unifi/digitalocean"
  name   = "unifi-controller"
  region = "nyc3"
}
```

### LetsEncrypt
If you provide the varaibles `fqdn` and `email` then the installation
script will attempt to provision a LetsEncrypt certificate for the
server.

If this is done, you must insure the hostname resolves to the server (or floating IP)
and the firewall (if used) allows inbound TCP ports `80` and `443`.
