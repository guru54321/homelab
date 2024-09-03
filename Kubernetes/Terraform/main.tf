# main.tf
terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "0.50.0"
    }
  }
}

# main.tf
provider "proxmox" {
  alias    = "proxmox"
  endpoint = var.node.endpoint
  insecure = var.node.insecure

  api_token = var.proxmox_auth.api_token
  ssh {
    agent    = true
    username = var.proxmox_auth.username
  }

  tmp_dir = "/var/tmp"
}
