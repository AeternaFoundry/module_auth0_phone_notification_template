output "phone_notification_templates_id" {
  description = "Map of id values across all phone_notification_templates, keyed the same as var.phone_notification_templates except keys with no id are omitted"
  value       = { for k, v in auth0_phone_notification_template.phone_notification_templates : k => v.id if v.id != null && length(v.id) > 0 }
}
output "phone_notification_templates_channel" {
  description = "Map of channel values across all phone_notification_templates, keyed the same as var.phone_notification_templates except keys with no channel are omitted"
  value       = { for k, v in auth0_phone_notification_template.phone_notification_templates : k => v.channel if v.channel != null && length(v.channel) > 0 }
}
output "phone_notification_templates_content" {
  description = "Map of content values across all phone_notification_templates, keyed the same as var.phone_notification_templates except keys with no content are omitted"
  value       = { for k, v in auth0_phone_notification_template.phone_notification_templates : k => one(v.content) if v.content != null && length(v.content) > 0 }
}
output "phone_notification_templates_customizable" {
  description = "Map of customizable values across all phone_notification_templates, keyed the same as var.phone_notification_templates except keys with no customizable are omitted"
  value       = { for k, v in auth0_phone_notification_template.phone_notification_templates : k => v.customizable if v.customizable != null }
}
output "phone_notification_templates_disabled" {
  description = "Map of disabled values across all phone_notification_templates, keyed the same as var.phone_notification_templates except keys with no disabled are omitted"
  value       = { for k, v in auth0_phone_notification_template.phone_notification_templates : k => v.disabled if v.disabled != null }
}
output "phone_notification_templates_template_id" {
  description = "Map of template_id values across all phone_notification_templates, keyed the same as var.phone_notification_templates except keys with no template_id are omitted"
  value       = { for k, v in auth0_phone_notification_template.phone_notification_templates : k => v.template_id if v.template_id != null && length(v.template_id) > 0 }
}
output "phone_notification_templates_tenant" {
  description = "Map of tenant values across all phone_notification_templates, keyed the same as var.phone_notification_templates except keys with no tenant are omitted"
  value       = { for k, v in auth0_phone_notification_template.phone_notification_templates : k => v.tenant if v.tenant != null && length(v.tenant) > 0 }
}
output "phone_notification_templates_type" {
  description = "Map of type values across all phone_notification_templates, keyed the same as var.phone_notification_templates except keys with no type are omitted"
  value       = { for k, v in auth0_phone_notification_template.phone_notification_templates : k => v.type if v.type != null && length(v.type) > 0 }
}

