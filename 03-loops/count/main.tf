resource "null_resource" "null" {
  count = 10
}

variable "fruits" {
  default = ["apple","mango","orange"]
}

resource "null_resource" "null1" {
  count = length(var.fruits)

  provisioner "local-exec" {
    command = "echo fruit name - ${var.fruits[count.index]}"
  }
}

# provisioner is a block an be added after creating the resource

