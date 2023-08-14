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
    true,
    10.5
  ]
}
#Data type inside the list does not matters

# We have dictionary(Map), meaning single variable will have multiple values, and eah value is going to have seperate name
variable "sample_dictionary" {
  default = {
    number1 = 100,
    string = "hello",
    boolean = true,
    number2 = 10.5
  }
}
# This is the most preferred variable over List when we declare the data
# When we want to run same code in diff environment, we can use this var

variable "env"{}

variable "auto_num1"{}