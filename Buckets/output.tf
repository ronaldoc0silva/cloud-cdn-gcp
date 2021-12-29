output "static_ipv4" {
  description = "Global IPv4 address"
  value       = google_compute_global_address.cdn_bucket_address.address
}