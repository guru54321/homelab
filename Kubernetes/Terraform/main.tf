# main.tf
terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "3.0.1-rc4"
    }
  }
}

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
