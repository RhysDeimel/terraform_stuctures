module "this" {
  source = "git@github.com:path/to/your/module/repo//webserver-cluster?ref=2.0.0"

  num_instances = 1
}
