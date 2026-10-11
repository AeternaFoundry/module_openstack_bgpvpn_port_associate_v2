variable "bgpvpn_port_associate_v2s" {
  description = <<EOT
Map of bgpvpn_port_associate_v2s, attributes below
Required:
    - bgpvpn_id
    - port_id
Optional:
    - advertise_fixed_ips
    - project_id
    - region
    - routes (block):
        - bgpvpn_id (optional)
        - local_pref (optional)
        - prefix (optional)
        - type (required)
EOT

  type = map(object({
    bgpvpn_id           = string
    port_id             = string
    advertise_fixed_ips = optional(bool)
    project_id          = optional(string)
    region              = optional(string)
    routes = optional(list(object({
      bgpvpn_id  = optional(string)
      local_pref = optional(number)
      prefix     = optional(string)
      type       = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.bgpvpn_port_associate_v2s : (
        v.routes == null || alltrue([for item in v.routes : (contains(["prefix", "bgpvpn_id"], item.type))])
      )
    ])
    error_message = "must be one of: \"prefix\", \"bgpvpn_id\""
  }
  validation {
    condition = alltrue([
      for k, v in var.bgpvpn_port_associate_v2s : (
        v.routes == null || alltrue([for item in v.routes : (item.bgpvpn_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", item.bgpvpn_id))))])
      )
    ])
    error_message = "must be a valid UUID"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

