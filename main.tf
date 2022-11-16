terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.40.0"
    }
  }
}

provider "google" {
  project = "confident-baton-362223"
  region  = "us-central1"
  zone    = "us-central1-a"
}

resource "google_storage_bucket" "apache-chikn" {
  name          = var.bucket-name1
  location      = "US"
  force_destroy = true

}
