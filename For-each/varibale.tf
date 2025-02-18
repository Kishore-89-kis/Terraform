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
 variable "domain_name"{
    default = "daws82s.online"
 }
 variable "zone_id" {
    default = "Z0900054KDP6PKE6NP4R"
}