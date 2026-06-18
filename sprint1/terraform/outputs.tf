output "srv" {
  value       = yandex_compute_instance.srv.network_interface[0].nat_ip_address
  description = "srv ip is:"
}

output "k8s-app" {
  value       = yandex_compute_instance.k8s-app.network_interface[0].nat_ip_address
  description = "app ip is:"
}
output "k8s-master" {
  value       = yandex_compute_instance.k8s-master.network_interface[0].nat_ip_address
  description = "master ip is:"
}


