variable "phone_notification_templates" {
  description = <<EOT
Map of phone_notification_templates, attributes below
Required:
    - type
Optional:
    - disabled
    - content (block):
        - body (optional, block):
            - text (optional)
            - voice (optional)
        - from (optional)
        - syntax (optional)
EOT

  type = map(object({
    type     = string
    disabled = optional(bool)
    content = optional(object({
      body = optional(object({
        text  = optional(string)
        voice = optional(string)
      }))
      from   = optional(string)
      syntax = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.phone_notification_templates : (
        contains(["otp_verify", "otp_enroll", "change_password", "blocked_account", "password_breach"], v.type)
      )
    ])
    error_message = "must be one of: \"otp_verify\", \"otp_enroll\", \"change_password\", \"blocked_account\", \"password_breach\""
  }
  validation {
    condition = alltrue([
      for k, v in var.phone_notification_templates : (
        v.content == null || (v.content.from == null || (length(v.content.from) > 0))
      )
    ])
    error_message = "must not be empty"
  }
}

