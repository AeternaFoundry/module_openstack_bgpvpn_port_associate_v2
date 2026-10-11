resource "openstack_bgpvpn_port_associate_v2" "bgpvpn_port_associate_v2s" {
  for_each = var.bgpvpn_port_associate_v2s

  bgpvpn_id           = each.value.bgpvpn_id
  port_id             = each.value.port_id
  advertise_fixed_ips = each.value.advertise_fixed_ips
  project_id          = each.value.project_id
  region              = each.value.region

  dynamic "routes" {
    for_each = each.value.routes != null ? each.value.routes : []
    content {
      bgpvpn_id  = routes.value.bgpvpn_id
      local_pref = routes.value.local_pref
      prefix     = routes.value.prefix
      type       = routes.value.type
    }
  }
}

