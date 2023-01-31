# Platform

`terraform.tf` can be generated, or created manually. Generation can be done via any templater and a simple script to crawl the tree and look for `.tf` files. Templating has the advantage of being able to upgrade providers and Terraform versions consitently, and globally.

Because files are defined statically, you can `cd` into your chosen directory and Terraform via your system binary, or copy this into a versioned container, or use patterns like Three Musketeers. It'll all work the same.
