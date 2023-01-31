# Terraform Structures

Here are two examples of repository setups (in folders instead of repos to keep them both in a single place).

## Platform
The Platform example uses a tree structure that maps to what you would expect in AWS. It aims to be explicit in what is there for auditing, debugging, and maintenance, rather than focusing on DRY. Components that are duplicated more than 3 times should be abstracted to a module for better versioning. Any thing below that is better off as raw `.tf` defined within this structure.
Additionally, the two methods can be combined within a single componenent instantiation.

Because components are declared separately in a tree structure, it is much easier to control module upgrades, refactor components piecemeal, and migrate state to new paths. Overall, this results in a healthier codebase.

The main downside of this pattern is because of the verbose format, more code changes will be required than a DRY workspace pattern.

## Application
This pattern abstracts as much underlying Terraform as possible to highlight obvious changes. A commit should be treated as the end result artifact that encompasses both code, and application infrastructure changes.

While this example uses separate backends initialised by passing in explicit backend config, it is also possible to use a workspaces pattern to achieve the same result.

Static configuration differences between environments are embedded in `.tfvars` files that are passed in during a Terraform run. Configuration that is consistent between environments, and is unlikely to change in the near future, should be abstracted to the underlying module.

Dynamic variables that change per deployment should be defined statically somewhere within the project, and then interpolated and passed to terraform at runtime.
Using `var.app_version` as an example, a CI task would be to fetch the application version statically defined within a file (`src/sample/__version__.py`) and pass it to Terraform as the required variable.

This pattern helps to achieve synchronisation between a packaged executable, application code, and infrastructure changes. In doing so, we help pave the way ffor a culture that encourages automatic testing, automatic deployments, automatic rollbacks, and rapid debugging and discovery.
