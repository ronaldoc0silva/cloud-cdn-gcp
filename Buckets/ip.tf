resource "google_compute_global_address" "cdn_bucket_address" {
  name         = var.cdn_ip_address_name
  ip_version   = "IPV4"
  address_type = "EXTERNAL"
  project      = var.project_id
}

resource "google_compute_global_forwarding_rule" "cdn_global_forwarding_rule" {
  name       = var.forwarding_rule_https_name
  target     = google_compute_target_https_proxy.cdn_https_proxy.self_link
  ip_address = google_compute_global_address.cdn_bucket_address.address
  port_range = "443"
  project    = var.project_id
}

resource "google_compute_global_forwarding_rule" "cdn_global_forwarding_http_rule" {
  name       = var.forwarding_rule_http_name
  target     = google_compute_target_http_proxy.cdn_http_proxy.self_link
  ip_address = google_compute_global_address.cdn_bucket_address.address
  port_range = "80"
  project    = var.project_id
}