#Print variable

output "sample_string" {
  value = var.sample_string
}

#If printhing variable with additional string

output "sample_string1" {
  value = "value of sample string = ${var.sample_string}"
}