output "fleet_schedules_id" {
  description = "Map of id values across all fleet_schedules, keyed the same as var.fleet_schedules except keys with no id are omitted"
  value       = { for k, v in datadog_fleet_schedule.fleet_schedules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "fleet_schedules_name" {
  description = "Map of name values across all fleet_schedules, keyed the same as var.fleet_schedules except keys with no name are omitted"
  value       = { for k, v in datadog_fleet_schedule.fleet_schedules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "fleet_schedules_query" {
  description = "Map of query values across all fleet_schedules, keyed the same as var.fleet_schedules except keys with no query are omitted"
  value       = { for k, v in datadog_fleet_schedule.fleet_schedules : k => v.query if v.query != null && length(v.query) > 0 }
}
output "fleet_schedules_rule" {
  description = "Map of rule values across all fleet_schedules, keyed the same as var.fleet_schedules except keys with no rule are omitted"
  value       = { for k, v in datadog_fleet_schedule.fleet_schedules : k => v.rule if v.rule != null && length(v.rule) > 0 }
}
output "fleet_schedules_status" {
  description = "Map of status values across all fleet_schedules, keyed the same as var.fleet_schedules except keys with no status are omitted"
  value       = { for k, v in datadog_fleet_schedule.fleet_schedules : k => v.status if v.status != null && length(v.status) > 0 }
}
output "fleet_schedules_version_to_latest" {
  description = "Map of version_to_latest values across all fleet_schedules, keyed the same as var.fleet_schedules except keys with no version_to_latest are omitted"
  value       = { for k, v in datadog_fleet_schedule.fleet_schedules : k => v.version_to_latest if v.version_to_latest != null }
}

