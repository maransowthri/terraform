resource "aws_security_group" "sg_for_graph" {
  name = "sg_for_graph"

  dynamic "ingress" {
    foreach  = var.ports
    iterator = port

    content {
      description = "TLS from VPC"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["${aws_eip.eip_for_graph.private_ip}/32"]
    }
  }
}
