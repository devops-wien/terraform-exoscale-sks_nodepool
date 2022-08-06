resource "exoscale_security_group_rule" "nodeport-services-ipv4" {
  security_group_id = var.security_group_id
  description       = "NodePort services IPv4 - Managed by Terraform"
  type              = "INGRESS"
  protocol          = "TCP"
  cidr              = "0.0.0.0/0"
  start_port        = 30000
  end_port          = 32767
}

resource "exoscale_security_group_rule" "nodeport-services-ipv6" {
  security_group_id = var.security_group_id
  description       = "NodePort services IPv6 - Managed by Terraform"
  type              = "INGRESS"
  protocol          = "TCP"
  cidr              = "::/0"
  start_port        = 30000
  end_port          = 32767
}

resource "exoscale_security_group_rule" "sks-kubelet" {
  security_group_id      = var.security_group_id
  description            = "SKS kubelet - Managed by Terraform"
  type                   = "INGRESS"
  protocol               = "TCP"
  start_port             = 10250
  end_port               = 10250
  user_security_group_id = var.security_group_id
}

resource "exoscale_security_group_rule" "calico" {
  security_group_id      = var.security_group_id
  description            = "Calico traffic - Managed by Terraform"
  type                   = "INGRESS"
  protocol               = "UDP"
  start_port             = 4789
  end_port               = 4789
  user_security_group_id = var.security_group_id
}
