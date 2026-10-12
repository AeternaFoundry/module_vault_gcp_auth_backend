resource "vault_gcp_auth_backend" "gcp_auth_backends" {
  for_each = var.gcp_auth_backends

  client_email               = each.value.client_email
  client_id                  = each.value.client_id
  credentials                = each.value.credentials
  credentials_wo             = each.value.credentials_wo
  credentials_wo_version     = each.value.credentials_wo_version
  description                = each.value.description
  disable_automated_rotation = each.value.disable_automated_rotation
  disable_remount            = each.value.disable_remount
  gce_alias                  = each.value.gce_alias
  gce_metadata               = each.value.gce_metadata
  iam_alias                  = each.value.iam_alias
  iam_metadata               = each.value.iam_metadata
  identity_token_audience    = each.value.identity_token_audience
  identity_token_key         = each.value.identity_token_key
  identity_token_ttl         = each.value.identity_token_ttl
  local                      = each.value.local
  namespace                  = each.value.namespace
  path                       = each.value.path
  private_key_id             = each.value.private_key_id
  project_id                 = each.value.project_id
  rotation_period            = each.value.rotation_period
  rotation_schedule          = each.value.rotation_schedule
  rotation_window            = each.value.rotation_window
  service_account_email      = each.value.service_account_email

  dynamic "custom_endpoint" {
    for_each = each.value.custom_endpoint != null ? [each.value.custom_endpoint] : []
    content {
      api     = custom_endpoint.value.api
      compute = custom_endpoint.value.compute
      crm     = custom_endpoint.value.crm
      iam     = custom_endpoint.value.iam
    }
  }

  dynamic "tune" {
    for_each = each.value.tune != null ? each.value.tune : []
    content {
      allowed_response_headers     = tune.value.allowed_response_headers
      audit_non_hmac_request_keys  = tune.value.audit_non_hmac_request_keys
      audit_non_hmac_response_keys = tune.value.audit_non_hmac_response_keys
      default_lease_ttl            = tune.value.default_lease_ttl
      listing_visibility           = tune.value.listing_visibility
      max_lease_ttl                = tune.value.max_lease_ttl
      passthrough_request_headers  = tune.value.passthrough_request_headers
      token_type                   = tune.value.token_type
    }
  }
}

