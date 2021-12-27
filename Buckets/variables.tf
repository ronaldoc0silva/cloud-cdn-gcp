variable "location" {
  description = "Location where the resource will be created"
  type = string
  default = "us-east1"
  
}

variable "project_id" {
  description = "ID of the project where the resource will be created"
  type = string
  default = "teste-buckers"
}

variable "storage_class" {
  description = "Storage class of the bucket"
  type = string
  default = "STANDARD"
}

variable "bucket_name" {
  description = "Name of the bucket"
  type = string
  default = "teste-buckers_rosilva021"
}

variable "cdn_bucket_name" {
  description = "Name of the bucket"
  type = string
  default = "web-admin-backend-bucket" 
}

variable "proxy_http_name" {
  type = string
  default = "cdn-http-proxy"
}

variable "proxy_https_name" {
  type = string
  default = "cdn-https-proxy" 
}

variable "cdn_ip_address_name" {
  type = string
  default = "bucket-teste-admin-ip" 
}

variable "forwarding_rule_http_name" {
  type = string
  default = "teste-http-lb-forwarding-rule" 
}

variable "lb_http_name" {
  type = string
  default = "teste-admin-http-lb" 
}

variable "lb_https_name" {
  type = string
  default = "teste-admin-https-lb" 
}
variable "forwarding_rule_https_name" {
  type = string
  default = "teste-https-lb-forwarding-rule" 
}

variable "force_destroy" {
  type        = bool
  default     = true
  description = "When deleting a bucket, this boolean option will delete all contained objects."
}
