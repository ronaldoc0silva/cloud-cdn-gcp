# resource "google_storage_bucket" "bucket_tatic_vero_prod" {
#   name = var.bucket_name
#   location = var.location
#   project = var.project_id
#   storage_class = var.storage_class
#   force_destroy = var.force_destroy
# }

resource "google_compute_backend_bucket" "cdn_backend_bucket_tatic_vero" {
  name        = var.cdn_bucket_name
  description = "Backend bucket for serving static content through CD"
  bucket_name = data.google_storage_bucket.my-bucket.name
  enable_cdn  = true
  project     = var.project_id
}

# resource "google_storage_bucket_iam_member" "all_users_viewers" {
#   bucket = google_storage_bucket.bucket_tatic_vero_prod.name
#   role   = "roles/storage.legacyObjectReader"
#   member = "allUsers"
# }