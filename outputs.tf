output "gcp_auth_backends_id" {
  description = "Map of id values across all gcp_auth_backends, keyed the same as var.gcp_auth_backends except keys with no id are omitted"
  value       = { for k, v in vault_gcp_auth_backend.gcp_auth_backends : k => v.id if v.id != null && length(v.id) > 0 }
}
output "gcp_auth_backends_accessor" {
  description = "Map of accessor values across all gcp_auth_backends, keyed the same as var.gcp_auth_backends except keys with no accessor are omitted"
  value       = { for k, v in vault_gcp_auth_backend.gcp_auth_backends : k => v.accessor if v.accessor != null && length(v.accessor) > 0 }
}
output "gcp_auth_backends_client_email" {
  description = "Map of client_email values across all gcp_auth_backends, keyed the same as var.gcp_auth_backends except keys with no client_email are omitted"
  value       = { for k, v in vault_gcp_auth_backend.gcp_auth_backends : k => v.client_email if v.client_email != null && length(v.client_email) > 0 }
}
output "gcp_auth_backends_client_id" {
  description = "Map of client_id values across all gcp_auth_backends, keyed the same as var.gcp_auth_backends except keys with no client_id are omitted"
  value       = { for k, v in vault_gcp_auth_backend.gcp_auth_backends : k => v.client_id if v.client_id != null && length(v.client_id) > 0 }
}
output "gcp_auth_backends_credentials" {
  description = "Map of credentials values across all gcp_auth_backends, keyed the same as var.gcp_auth_backends except keys with no credentials are omitted"
  value       = { for k, v in vault_gcp_auth_backend.gcp_auth_backends : k => v.credentials if v.credentials != null && length(v.credentials) > 0 }
  sensitive   = true
}
output "gcp_auth_backends_credentials_wo_version" {
  description = "Map of credentials_wo_version values across all gcp_auth_backends, keyed the same as var.gcp_auth_backends except keys with no credentials_wo_version are omitted"
  value       = { for k, v in vault_gcp_auth_backend.gcp_auth_backends : k => v.credentials_wo_version if v.credentials_wo_version != null }
}
output "gcp_auth_backends_custom_endpoint" {
  description = "Map of custom_endpoint values across all gcp_auth_backends, keyed the same as var.gcp_auth_backends except keys with no custom_endpoint are omitted"
  value       = { for k, v in vault_gcp_auth_backend.gcp_auth_backends : k => one(v.custom_endpoint) if v.custom_endpoint != null && length(v.custom_endpoint) > 0 }
}
output "gcp_auth_backends_description" {
  description = "Map of description values across all gcp_auth_backends, keyed the same as var.gcp_auth_backends except keys with no description are omitted"
  value       = { for k, v in vault_gcp_auth_backend.gcp_auth_backends : k => v.description if v.description != null && length(v.description) > 0 }
}
output "gcp_auth_backends_disable_automated_rotation" {
  description = "Map of disable_automated_rotation values across all gcp_auth_backends, keyed the same as var.gcp_auth_backends except keys with no disable_automated_rotation are omitted"
  value       = { for k, v in vault_gcp_auth_backend.gcp_auth_backends : k => v.disable_automated_rotation if v.disable_automated_rotation != null }
}
output "gcp_auth_backends_disable_remount" {
  description = "Map of disable_remount values across all gcp_auth_backends, keyed the same as var.gcp_auth_backends except keys with no disable_remount are omitted"
  value       = { for k, v in vault_gcp_auth_backend.gcp_auth_backends : k => v.disable_remount if v.disable_remount != null }
}
output "gcp_auth_backends_gce_alias" {
  description = "Map of gce_alias values across all gcp_auth_backends, keyed the same as var.gcp_auth_backends except keys with no gce_alias are omitted"
  value       = { for k, v in vault_gcp_auth_backend.gcp_auth_backends : k => v.gce_alias if v.gce_alias != null && length(v.gce_alias) > 0 }
}
output "gcp_auth_backends_gce_metadata" {
  description = "Map of gce_metadata values across all gcp_auth_backends, keyed the same as var.gcp_auth_backends except keys with no gce_metadata are omitted"
  value       = { for k, v in vault_gcp_auth_backend.gcp_auth_backends : k => v.gce_metadata if v.gce_metadata != null && length(v.gce_metadata) > 0 }
}
output "gcp_auth_backends_iam_alias" {
  description = "Map of iam_alias values across all gcp_auth_backends, keyed the same as var.gcp_auth_backends except keys with no iam_alias are omitted"
  value       = { for k, v in vault_gcp_auth_backend.gcp_auth_backends : k => v.iam_alias if v.iam_alias != null && length(v.iam_alias) > 0 }
}
output "gcp_auth_backends_iam_metadata" {
  description = "Map of iam_metadata values across all gcp_auth_backends, keyed the same as var.gcp_auth_backends except keys with no iam_metadata are omitted"
  value       = { for k, v in vault_gcp_auth_backend.gcp_auth_backends : k => v.iam_metadata if v.iam_metadata != null && length(v.iam_metadata) > 0 }
}
output "gcp_auth_backends_identity_token_audience" {
  description = "Map of identity_token_audience values across all gcp_auth_backends, keyed the same as var.gcp_auth_backends except keys with no identity_token_audience are omitted"
  value       = { for k, v in vault_gcp_auth_backend.gcp_auth_backends : k => v.identity_token_audience if v.identity_token_audience != null && length(v.identity_token_audience) > 0 }
}
output "gcp_auth_backends_identity_token_key" {
  description = "Map of identity_token_key values across all gcp_auth_backends, keyed the same as var.gcp_auth_backends except keys with no identity_token_key are omitted"
  value       = { for k, v in vault_gcp_auth_backend.gcp_auth_backends : k => v.identity_token_key if v.identity_token_key != null && length(v.identity_token_key) > 0 }
}
output "gcp_auth_backends_identity_token_ttl" {
  description = "Map of identity_token_ttl values across all gcp_auth_backends, keyed the same as var.gcp_auth_backends except keys with no identity_token_ttl are omitted"
  value       = { for k, v in vault_gcp_auth_backend.gcp_auth_backends : k => v.identity_token_ttl if v.identity_token_ttl != null }
}
output "gcp_auth_backends_local" {
  description = "Map of local values across all gcp_auth_backends, keyed the same as var.gcp_auth_backends except keys with no local are omitted"
  value       = { for k, v in vault_gcp_auth_backend.gcp_auth_backends : k => v.local if v.local != null }
}
output "gcp_auth_backends_namespace" {
  description = "Map of namespace values across all gcp_auth_backends, keyed the same as var.gcp_auth_backends except keys with no namespace are omitted"
  value       = { for k, v in vault_gcp_auth_backend.gcp_auth_backends : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "gcp_auth_backends_path" {
  description = "Map of path values across all gcp_auth_backends, keyed the same as var.gcp_auth_backends except keys with no path are omitted"
  value       = { for k, v in vault_gcp_auth_backend.gcp_auth_backends : k => v.path if v.path != null && length(v.path) > 0 }
}
output "gcp_auth_backends_private_key_id" {
  description = "Map of private_key_id values across all gcp_auth_backends, keyed the same as var.gcp_auth_backends except keys with no private_key_id are omitted"
  value       = { for k, v in vault_gcp_auth_backend.gcp_auth_backends : k => v.private_key_id if v.private_key_id != null && length(v.private_key_id) > 0 }
}
output "gcp_auth_backends_project_id" {
  description = "Map of project_id values across all gcp_auth_backends, keyed the same as var.gcp_auth_backends except keys with no project_id are omitted"
  value       = { for k, v in vault_gcp_auth_backend.gcp_auth_backends : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "gcp_auth_backends_rotation_period" {
  description = "Map of rotation_period values across all gcp_auth_backends, keyed the same as var.gcp_auth_backends except keys with no rotation_period are omitted"
  value       = { for k, v in vault_gcp_auth_backend.gcp_auth_backends : k => v.rotation_period if v.rotation_period != null }
}
output "gcp_auth_backends_rotation_schedule" {
  description = "Map of rotation_schedule values across all gcp_auth_backends, keyed the same as var.gcp_auth_backends except keys with no rotation_schedule are omitted"
  value       = { for k, v in vault_gcp_auth_backend.gcp_auth_backends : k => v.rotation_schedule if v.rotation_schedule != null && length(v.rotation_schedule) > 0 }
}
output "gcp_auth_backends_rotation_window" {
  description = "Map of rotation_window values across all gcp_auth_backends, keyed the same as var.gcp_auth_backends except keys with no rotation_window are omitted"
  value       = { for k, v in vault_gcp_auth_backend.gcp_auth_backends : k => v.rotation_window if v.rotation_window != null }
}
output "gcp_auth_backends_service_account_email" {
  description = "Map of service_account_email values across all gcp_auth_backends, keyed the same as var.gcp_auth_backends except keys with no service_account_email are omitted"
  value       = { for k, v in vault_gcp_auth_backend.gcp_auth_backends : k => v.service_account_email if v.service_account_email != null && length(v.service_account_email) > 0 }
}
output "gcp_auth_backends_tune" {
  description = "Map of tune values across all gcp_auth_backends, keyed the same as var.gcp_auth_backends except keys with no tune are omitted"
  value       = { for k, v in vault_gcp_auth_backend.gcp_auth_backends : k => v.tune if v.tune != null && length(v.tune) > 0 }
}

