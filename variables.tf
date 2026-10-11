variable "fleet_schedules" {
  description = <<EOT
Map of fleet_schedules, attributes below
Required:
    - name
    - query
    - rule
Optional:
    - status
    - version_to_latest
EOT

  type = map(object({
    name  = string
    query = string
    rule = object({
      days_of_week                = set(string)
      maintenance_window_duration = number
      start_maintenance_window    = string
      timezone                    = string
    })
    status            = optional(string)
    version_to_latest = optional(number)
  }))
}

