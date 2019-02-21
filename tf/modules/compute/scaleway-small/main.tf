resource "scaleway_ip" "ip" {
  server = "${scaleway_server.server.id}"
}

resource "scaleway_server" "server" {
  name  = "${var.instance_name}"
  image = "c564be4f-2dac-4b1b-a239-3f3a441700ed"
  type  = "START1-XS"
  security_group = "${var.security_group}"
}
