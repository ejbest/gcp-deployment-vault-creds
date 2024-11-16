provider "vault" {
  skip_tls_verify = true
  address         = local.vault_address
  token           = var.vault_token
}

data "http" "vault_gcp_token" {
  url = "${local.vault_address}/v1/${local.vault_gcp_secret_backend}/token/${local.vault_gcp_secret_roleset}"

  request_headers = {
    "X-Vault-Token" = var.vault_token
  }
}

provider "google" {
  project      = local.gcp_project_name
  region       = local.gcp_region
  zone         = local.gcp_zone
  access_token = jsondecode(data.http.vault_gcp_token.response_body).data.token
}
