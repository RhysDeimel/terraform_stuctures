module "cicd_baseline" {
  source = "git@github.com:path/to/your/module/repo//iam_cicd_baseline"
}


module "cicd_applications" {
  source   = "git@github.com:path/to/your/module/repo//iam_cicd_applications"
  for_each = toset(["dev", "test"])

  env = each.key
}
