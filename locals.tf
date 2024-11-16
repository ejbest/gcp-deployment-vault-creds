locals {
  vault_address            = "https://vault.waterskiingguy.com"
  gcp_project_name         = "gcp-terraform-udemy-course"
  gcp_region               = "us-central"
  gcp_zone                 = "us-central-a"
  vault_gcp_secret_backend = "gcp"
  vault_gcp_secret_roleset = "project_editor"
}
