# Data Source will help in getting the information
# IF the Data Source is empty, then the terraform code will no go further when applied
# Major challenge, if the fetching data source is not available the terraform code will not go further and we cant handle this in the current terraform version
# Example if the security group is not there, then i want to create it and go further, but this logic is not available in current terraform version
data "aws_security_group" "allow-all" {
  name = "allow-all"
}

#Will print all the information
output "security_group1" {
  value = data.aws_security_group.allow-all
}

#Will print only information about ID
output "security_group2" {
  value = data.aws_security_group.allow-all.id
}