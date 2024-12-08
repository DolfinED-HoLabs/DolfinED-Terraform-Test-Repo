## Create a GitHub repo using Terraform and GitHub provider
## https://registry.terraform.io/providers/integrations/github/latest/docs


terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

# Provider Authentication - using OAuth tokens

provider "github" {
  token = var.access_token
}

## Create a repository resource
## https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#argument-reference


resource "github_repository" "first_repo" {
  name        = "DolfinED-Terraform-Test-Repo"
  description = "Testing Terraform with GitHub"

  visibility = "public"
  # visibility = "private"
}


## Initialize the directory using "git init" and then configure git config for user.name and user.email

## use the below commands, please make sure to use your GitHub account user name and email.

# git config --global user.name "DolfinED-HoLabs" 
# git config --global user.email "e.abousherif@gmail.com"

## verify using 

# git config -l

## now do the following, create a readme file and push it to the reposiroty

# echo "# DolfinED-Terraform-Test" >> README.md

## use git status to check the files
# You should see something similar to this 

# .terraform.lock.hcl
# .terraform/
# DolfinED-Terraform-Test/
# GitHub Repo.tf
# README.md
# terraform.tfstate
# variables.tf

## now we need to add the README.md file to the GitHub repository, use the following commands to achieve this

# git add README.md

# use "git status" again to ensure that README.md will be in the tracked area (README is case sensitive)

## now continue with the below commands to commit the file to the local repo, then connet the local and remote repos and push the file to github

#git add README.md 
# git commit -m "first commit"
# git branch -M main
# git remote add origin https://github.com/DolfinED-HoLabs/DolfinED-Terraform-Repo.git
# git push -u origin main

# check to see that you have the file on GitHub

## Is it safe to repeat the same for all files? 
## specifically, rds_pass.txt, .tfstate, .tfvars, 
## will this files on Github pose any security risk?


## Now, let's create the database (remove the .bk from rds.tf file)

## let's create the .gitignore file before we track the other files and exclude the files we do not need to upload to github

## now it is save to add the rest to the tracking area and commit them then push them to GitHub