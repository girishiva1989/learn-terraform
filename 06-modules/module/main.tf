resource null_resource "null" {
  provisioner "local-exec" {
    command = "echo hello from module1"
  }
}

resource null_resource "null" {
  provisioner "local-exec" {
    command = "echo hello from module2"
  }
}