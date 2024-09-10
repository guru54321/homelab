# k8s-config.tf

resource "proxmox_virtual_environment_download_file" "debian_12_generic_image" {
  provider     = proxmox.proxmox
  node_name    = var.node.node_name
  content_type = "iso"
  datastore_id = "storage/local"

  file_name          = "debian-12-generic-amd64-20240201-1644.img"
  url                = "https://cloud.debian.org/images/cloud/bookworm/20240211-1654/debian-12-generic-amd64-20240211-1654.qcow2"
  checksum           = "b679398972ba45a60574d9202c4f97ea647dd3577e857407138b73b71a3c3c039804e40aac2f877f3969676b6c8a1ebdb4f2d67a4efa6301c21e349e37d43ef5"
  checksum_algorithm = "sha512"
}
