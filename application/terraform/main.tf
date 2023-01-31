module "this" {
  source = "git@github.com:path/to/your/module/repo//webserver-ecs-task?ref=1.0.0"

  num_tasks = var.num_tasks
}
