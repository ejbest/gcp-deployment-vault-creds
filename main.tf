
resource "google_storage_bucket" "static-site" {
  name          = "bucket-from-tf-up3-test"
  location      = "US"
  force_destroy = true
}


resource "google_service_account" "test" {
  account_id   = "test-service-account"
  display_name = "Test Service Account"
}
