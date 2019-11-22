terraform {
    backend "remote" {
        hostname = "app.terraform.io"
        organization = "devops-proj" # org name from step 2.
        workspaces {
            name = "my-app" # name for your app's state.
            }
      
    }
}

variable "aws_region" { }

