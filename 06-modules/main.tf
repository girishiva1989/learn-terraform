module "sample" {
  source = "./module"
  input = module.sample2.dummy-op
}

module "sample2" {
  source = "./dummy"
}