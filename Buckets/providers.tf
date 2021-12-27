provider "google" {
  credentials = "/Users/ronaldosilva/Downloads/teste-buckers-12b4a470025b.json"
}

provider "google-beta" {
  credentials = "/Users/ronaldosilva/Downloads/teste-buckers-12b4a470025b.json"
}

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "~> 4.0.0"
    }
  }
}