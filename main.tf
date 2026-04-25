resource "aws_lb" "main" {
  name               = "test-lb-tf"
  internal           = var.internal
  lb_type = var.lb_type
  security_groups    = var.sg_ingress_cidr
  subnets            = [for subnet in aws_subnet.public : subnet.id]

}