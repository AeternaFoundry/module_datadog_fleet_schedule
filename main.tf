resource "datadog_fleet_schedule" "fleet_schedules" {
  for_each = var.fleet_schedules

  name              = each.value.name
  query             = each.value.query
  rule              = each.value.rule
  status            = each.value.status
  version_to_latest = each.value.version_to_latest
}

