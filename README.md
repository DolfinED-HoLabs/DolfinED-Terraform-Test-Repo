This lab has 3 steps:

1 - Create a GitHub public repo using Terraform
This is covered by the files GitHubRepo.tf

2 - Create an RDS database using Terraform 
this is covered by the files
- rds.tf (after removing the extension .bk from the rds.tf.bk file)
- variables.tf
- terraform.tfvars
- rds_pass.txt
- providers.tf

3 - Create a GitHub remote and a .gitignore file then commit the files we need to upload to GitHub

There are files that are here only to explain concepts and they are not related to the configuration or lab steps, they are:
- credentials.txt
- VCS GtHub.tf.bk
- Provider Authentication.tf.bk

Notes:
- The .gitignore file is already available with the extension .bk