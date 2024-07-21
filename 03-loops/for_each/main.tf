variable "fruits_map" {
  default = {
    apple   = 10
    banana  = 100
    oranges = 200
  }
}

resource "null_resource" "fruits_nane" {

  for_each = var.fruits_map

  provisioner "local-exec" {
    command = "echo Fruit Name - ${each.key} - ${each.value}"
    //command = "echo  ${length(var.fruits)}"
  }

}

variable "fruits_multi_map" {
  default = {
    apple = {
      name  = "apple"
      count = 10
    }
    orange = {
      name  = "orange"
      count = 200
    }
    banana = {
      name  = "banana"
      count = 100
    }
  }
}

resource "null_resource" "fruits1" {

  for_each = var.fruits_multi_map

  provisioner "local-exec" {
    command = "echo Fruit Name - ${each.value["name"]} - ${each.value["count"]}"
    //command = "echo  ${length(var.fruits)}"
  }

}

// For-each on a list
variable "vegetables" {
  default = ["carrot ", "capsicum"]
}

resource "null_resource" "vegetables" {

  for_each = toset(var.vegetables)

  provisioner "local-exec" {
    command = "echo Fruit Name - ${each.key}"
  }

}