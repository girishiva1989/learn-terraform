variable "sample_string" {
  default = "Hello world"
}

variable "sample_number" {
  default = 100
}

variable "sample_boolian" {
  default = true
}

#Onle strings should be placed within double quotes
#Terraform does not support single quotes

#We have variable types
# default
# list
variable "sample_list" {
  default = [
    100,
    "hello",
    true
    10.5
  ]
}
#Data type inside the list does not matters
