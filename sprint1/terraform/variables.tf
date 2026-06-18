variable "folder_id" {
  description = "folder_id"
  type        = string
}
variable "token" {
  description = "token_yc"
  type        = string
}

variable "service" {
  description = "service_account_id"
  type        = string
}

variable "zone" {
  description = "zone_in_yandex"
  type        = string
  default     = "ru-central1-a"
}

variable "ubuntu_image" {
  default     = "ubuntu-2204-lts"
  type        = string
  description = "image_vm"
}

variable "ssh_private_key_path" {
  description = "ssh_private"
  type        = string
}
variable "ssh_public_key_path" {
  description = "ssh_public"
  type        = string
}
