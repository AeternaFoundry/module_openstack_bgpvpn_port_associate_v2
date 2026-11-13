output "bgpvpn_port_associate_v2s_id" {
  description = "Map of id values across all bgpvpn_port_associate_v2s, keyed the same as var.bgpvpn_port_associate_v2s"
  value       = { for k, v in openstack_bgpvpn_port_associate_v2.bgpvpn_port_associate_v2s : k => v.id }
}
output "bgpvpn_port_associate_v2s_advertise_fixed_ips" {
  description = "Map of advertise_fixed_ips values across all bgpvpn_port_associate_v2s, keyed the same as var.bgpvpn_port_associate_v2s"
  value       = { for k, v in openstack_bgpvpn_port_associate_v2.bgpvpn_port_associate_v2s : k => v.advertise_fixed_ips }
}
output "bgpvpn_port_associate_v2s_bgpvpn_id" {
  description = "Map of bgpvpn_id values across all bgpvpn_port_associate_v2s, keyed the same as var.bgpvpn_port_associate_v2s"
  value       = { for k, v in openstack_bgpvpn_port_associate_v2.bgpvpn_port_associate_v2s : k => v.bgpvpn_id }
}
output "bgpvpn_port_associate_v2s_port_id" {
  description = "Map of port_id values across all bgpvpn_port_associate_v2s, keyed the same as var.bgpvpn_port_associate_v2s"
  value       = { for k, v in openstack_bgpvpn_port_associate_v2.bgpvpn_port_associate_v2s : k => v.port_id }
}
output "bgpvpn_port_associate_v2s_project_id" {
  description = "Map of project_id values across all bgpvpn_port_associate_v2s, keyed the same as var.bgpvpn_port_associate_v2s"
  value       = { for k, v in openstack_bgpvpn_port_associate_v2.bgpvpn_port_associate_v2s : k => v.project_id }
}
output "bgpvpn_port_associate_v2s_region" {
  description = "Map of region values across all bgpvpn_port_associate_v2s, keyed the same as var.bgpvpn_port_associate_v2s"
  value       = { for k, v in openstack_bgpvpn_port_associate_v2.bgpvpn_port_associate_v2s : k => v.region }
}
output "bgpvpn_port_associate_v2s_routes" {
  description = "Map of routes values across all bgpvpn_port_associate_v2s, keyed the same as var.bgpvpn_port_associate_v2s"
  value       = { for k, v in openstack_bgpvpn_port_associate_v2.bgpvpn_port_associate_v2s : k => v.routes }
}

