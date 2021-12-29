resource "google_compute_target_https_proxy" "cdn_https_proxy" {
  name             = var.proxy_https_name
  url_map          = google_compute_url_map.cdn_url_map_https_lb.self_link
  ssl_certificates = [google_compute_managed_ssl_certificate.cdn_certificate.self_link]
  project          = var.project_id
}

# resource "google_compute_target_http_proxy" "cdn_http_proxy" {
#   name    = var.proxy_http_name
#   url_map = google_compute_url_map.cdn_url_map_http_lb.self_link
#   project = var.project_id
# }