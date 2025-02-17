 resource "aws_instance" "expense"{
  for_each = var.instance
    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids=[aws_security_group.allow_tls.id]
    instance_type = each.value
    tags = {
      Name = each.key
          }
    }

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"

ingress {
    from_port       = 22
    to_port         = 22
    protocol        = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
      }
 
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
      }

  tags = {
    Name = "allow_tls"
  }
}
 
 