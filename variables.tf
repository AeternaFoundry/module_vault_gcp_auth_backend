variable "gcp_auth_backends" {
  description = <<EOT
Map of gcp_auth_backends, attributes below
Optional:
    - client_email
    - client_id
    - credentials
    - credentials_wo
    - credentials_wo_version
    - description
    - disable_automated_rotation
    - disable_remount
    - gce_alias
    - gce_metadata
    - iam_alias
    - iam_metadata
    - identity_token_audience
    - identity_token_key
    - identity_token_ttl
    - local
    - namespace
    - path
    - private_key_id
    - project_id
    - rotation_period
    - rotation_schedule
    - rotation_window
    - service_account_email
    - custom_endpoint (block):
        - api (optional)
        - compute (optional)
        - crm (optional)
        - iam (optional)
    - tune (block):
        - allowed_response_headers (optional)
        - audit_non_hmac_request_keys (optional)
        - audit_non_hmac_response_keys (optional)
        - default_lease_ttl (optional)
        - listing_visibility (optional)
        - max_lease_ttl (optional)
        - passthrough_request_headers (optional)
        - token_type (optional)
EOT

  type = map(object({
    client_email               = optional(string)
    client_id                  = optional(string)
    credentials                = optional(string)
    credentials_wo             = optional(string)
    credentials_wo_version     = optional(number)
    description                = optional(string)
    disable_automated_rotation = optional(bool)
    disable_remount            = optional(bool)
    gce_alias                  = optional(string)
    gce_metadata               = optional(set(string))
    iam_alias                  = optional(string)
    iam_metadata               = optional(set(string))
    identity_token_audience    = optional(string)
    identity_token_key         = optional(string)
    identity_token_ttl         = optional(number)
    local                      = optional(bool)
    namespace                  = optional(string)
    path                       = optional(string)
    private_key_id             = optional(string)
    project_id                 = optional(string)
    rotation_period            = optional(number)
    rotation_schedule          = optional(string)
    rotation_window            = optional(number)
    service_account_email      = optional(string)
    custom_endpoint = optional(object({
      api     = optional(string)
      compute = optional(string)
      crm     = optional(string)
      iam     = optional(string)
    }))
    tune = optional(list(object({
      allowed_response_headers     = optional(list(string))
      audit_non_hmac_request_keys  = optional(list(string))
      audit_non_hmac_response_keys = optional(list(string))
      default_lease_ttl            = optional(string)
      listing_visibility           = optional(string)
      max_lease_ttl                = optional(string)
      passthrough_request_headers  = optional(list(string))
      token_type                   = optional(string)
    })))
  }))
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

