 resource "aws_instance" "this"{
    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids=[aws_security_group.allow_tls.id]
    instance_type ="t3.micro"
    tags = {
        Name = "terraform-demo"
        purpose = "terraform-practice"
    }
provisioner "local-exce" {
command = "echo ${self.private_ip} > inventory"
}
conection {
  type = "ssh"
  user = "ec2_user"
  password = "Devops321"
  host = self.public_ip
}
provisioner "remote-exec" {
  inline = [
    "sudo dnf install nginx -y",
    "sudo systemctl start nginxx",
    
  ]
}
 }

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"

ingress {
    from_port       = 80
    to_port         = 80
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