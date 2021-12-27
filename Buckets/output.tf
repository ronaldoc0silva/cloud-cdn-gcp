output "self_link" {
  value       = join("", google_storage_bucket.bucket_tatic_vero_prod.*.self_link)
  description = "The URI of the created resource"
}

output "url" {
  value       = join("", google_storage_bucket.bucket_tatic_vero_prod.*.url)
  description = "The base URL of the bucket, in the format gs://<bucket-name>"
}

output "name" {
  value       = join("", google_storage_bucket.bucket_tatic_vero_prod.*.name)
  description = "The name of bucket"
}

output "static_ipv4" {
  description = "Global IPv4 address"
  value       = google_compute_global_address.cdn_bucket_address.address
}