 /* 
 if (expersion) {
  this statement run if expersion is ture
 }
 else {
this statement run if expersion is false
 }

 Expersion ? "this runs if ture" : "this runs if fails" */
 
 variable "instance" {
   
   default     = ["mysql", "backend", "frontend"]
   description = "this is RHEL AMI ID"
 }
variable "zone_id" {
  default = "Z0900054KDP6PKE6NP4R"
}
variable "domain_name" {
  default = "kishore.store"
}