resource null_resource "nothing" {
  provisioner "local-exec" {
    command = "echo hello from module ${var.module}"
  }
}

variable "module" {

}