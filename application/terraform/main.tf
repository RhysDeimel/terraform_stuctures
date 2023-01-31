module "this" {
  source = "git@github.com:path/to/your/module/repo//webserver-foo-task?ref=1.0.0"

  num_tasks = var.num_tasks

  app_version = var.app_version
}
