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
  pm_api_url = var.node.endpoint
  pm_tls_insecure = var.node.insecure
  pm_api_token_id = var.proxmox_auth.api_token
  pm_user = var.proxmox_auth.username
}
