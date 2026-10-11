variable "iap_agent_registry_endpoint_iam_members" {
  description = <<EOT
Map of iap_agent_registry_endpoint_iam_members, attributes below
Required:
    - endpoint_id
    - member
    - role
Optional:
    - location
    - project
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    endpoint_id = string
    member      = string
    role        = string
    location    = optional(string)
    project     = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

