variable "amiid" {
  description = "ami id of the variable"
  default     = "ami-0742b4e673072066f"
  type        = string
}

variable "instancecount" {
  description = "No of instance createed"
  default     = 2
  type        = number
}
variable "tags" {
  default= ["instance1" , "instance2"]
}

