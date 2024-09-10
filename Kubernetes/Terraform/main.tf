# main.tf
terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "0.64.0"
    }
  }
}

provider "proxmox" {
  endpoint = var.node.endpoint
  username = var.proxmox_auth.username
  insecure = var.node.insecure
  ssh {
    agent = true
    username = var.proxmox_auth.username
  }
}