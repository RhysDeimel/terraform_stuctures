module "this" {
  source = "git@github.com:path/to/your/module/repo//webserver-cluster?ref=1.3.0"

  num_instances = 2
}
