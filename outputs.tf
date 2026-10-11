output "bgpvpn_port_associate_v2s_id" {
  description = "Map of id values across all bgpvpn_port_associate_v2s, keyed the same as var.bgpvpn_port_associate_v2s except keys with no id are omitted"
  value       = { for k, v in openstack_bgpvpn_port_associate_v2.bgpvpn_port_associate_v2s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bgpvpn_port_associate_v2s_advertise_fixed_ips" {
  description = "Map of advertise_fixed_ips values across all bgpvpn_port_associate_v2s, keyed the same as var.bgpvpn_port_associate_v2s except keys with no advertise_fixed_ips are omitted"
  value       = { for k, v in openstack_bgpvpn_port_associate_v2.bgpvpn_port_associate_v2s : k => v.advertise_fixed_ips if v.advertise_fixed_ips != null }
}
output "bgpvpn_port_associate_v2s_bgpvpn_id" {
  description = "Map of bgpvpn_id values across all bgpvpn_port_associate_v2s, keyed the same as var.bgpvpn_port_associate_v2s except keys with no bgpvpn_id are omitted"
  value       = { for k, v in openstack_bgpvpn_port_associate_v2.bgpvpn_port_associate_v2s : k => v.bgpvpn_id if v.bgpvpn_id != null && length(v.bgpvpn_id) > 0 }
}
output "bgpvpn_port_associate_v2s_port_id" {
  description = "Map of port_id values across all bgpvpn_port_associate_v2s, keyed the same as var.bgpvpn_port_associate_v2s except keys with no port_id are omitted"
  value       = { for k, v in openstack_bgpvpn_port_associate_v2.bgpvpn_port_associate_v2s : k => v.port_id if v.port_id != null && length(v.port_id) > 0 }
}
output "bgpvpn_port_associate_v2s_project_id" {
  description = "Map of project_id values across all bgpvpn_port_associate_v2s, keyed the same as var.bgpvpn_port_associate_v2s except keys with no project_id are omitted"
  value       = { for k, v in openstack_bgpvpn_port_associate_v2.bgpvpn_port_associate_v2s : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "bgpvpn_port_associate_v2s_region" {
  description = "Map of region values across all bgpvpn_port_associate_v2s, keyed the same as var.bgpvpn_port_associate_v2s except keys with no region are omitted"
  value       = { for k, v in openstack_bgpvpn_port_associate_v2.bgpvpn_port_associate_v2s : k => v.region if v.region != null && length(v.region) > 0 }
}
output "bgpvpn_port_associate_v2s_routes" {
  description = "Map of routes values across all bgpvpn_port_associate_v2s, keyed the same as var.bgpvpn_port_associate_v2s except keys with no routes are omitted"
  value       = { for k, v in openstack_bgpvpn_port_associate_v2.bgpvpn_port_associate_v2s : k => v.routes if v.routes != null && length(v.routes) > 0 }
}

