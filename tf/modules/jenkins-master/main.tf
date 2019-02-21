module "security-group" {
  source = "../networking/security-groups/jenkins-security-group"
}

module "server" {
  source = "../compute/scaleway-small"
  instance_name = "tomasing_jenkins-master"
  security_group = "${module.security-group.id}"
}