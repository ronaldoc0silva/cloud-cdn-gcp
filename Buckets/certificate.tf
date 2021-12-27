resource "google_compute_managed_ssl_certificate" "cdn_certificate" {
  provider = google-beta
  project  = var.project_id
 
  name = "cdn-managed-certificate"
 
  managed {
    domains = ["ronaldo.net"]
  }
}