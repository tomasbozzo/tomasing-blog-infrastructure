resource "scaleway_security_group" "tomasing_jenkins" {
  name                    = "tomasing_jenkins"
  description             = "allow 8080 port"
  inbound_default_policy  = "drop"
}

resource "scaleway_security_group_rule" "java_server" {
  security_group = "${scaleway_security_group.tomasing_jenkins.id}"

  action    = "accept"
  direction = "inbound"
  ip_range  = "0.0.0.0/0"
  protocol  = "TCP"
  port      = 8080
}

resource "scaleway_security_group_rule" "ssh" {
  security_group = "${scaleway_security_group.tomasing_jenkins.id}"

  action    = "accept"
  direction = "inbound"
  ip_range  = "0.0.0.0/0"
  protocol  = "TCP"
  port      = 22
}
