resource "google_compute_url_map" "cdn_url_map_https_lb" {
  name            = var.lb_https_name
  default_service = google_compute_backend_bucket.cdn_backend_bucket_tatic_vero_prod.self_link
  project         = var.project_id
}

resource "google_compute_url_map" "cdn_url_map_http_lb" {
  name            = var.lb_http_name
  default_service = google_compute_backend_bucket.cdn_backend_bucket_tatic_vero_prod.self_link
  project         = var.project_id
}