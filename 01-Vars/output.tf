#Print variable
#In Terraform, how we give variable name while declaring it, in the similar manner we give name while printing

output "sample1" {
  value = var.sample_string
}

#If printhing variable with additional string

output "sample2" {
  value = "value of sample string = ${var.sample_string}"
}