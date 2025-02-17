 /* 
 if (expersion) {
  this statement run if expersion is ture
 }
 else {
this statement run if expersion is false
 }

 Expersion ? "this runs if ture" : "this runs if fails" */
 
 variable "instance"{
type = map
default = {
mysql = "t3.small"
backend = "t3.micro"
frontend = "t3.micro"

}
 }