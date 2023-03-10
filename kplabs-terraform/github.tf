terraform {
    required_providers {
      github = {
        source = "integrations/github"
        version = "4.27.1"
      }
    }    
}        

provider "github" {
  token = "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"
  }

  resource "github repository" "example" {
    name        = "terraform-repo"
    visibility  = "private"
  }
  

    
    