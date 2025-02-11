 
 /* ######Syntax
 Variable "<variable>"{
  type =
  default = ""
 } */
 
 
 variable "ami_id" {
   type        = string
   default     = "ami-09c813fb71547fc4f"
   description = "this is RHEL AMI ID"
 }
 
 variable "instance_type" {
  default ="t3.micro"
 }

 variable "ec2_tags"{
  type =map
  default ={
    project ="expense"
    component= "backend"
    environment ="dev"
    Name = "expensive-backend-dev"
  }

 }

variable "from_port" {
  type = number
  default = 22
}

 variable "to_port"{
  type =number
  default = 22
 }
 variable "cidr_blocks"{
  type = list(string)
  default = ["0.0.0.0/0"]
 }
 variable "sg_tags"{
  type =map
  default = {
    Name= "expensive-backend-dev"
  }
 }