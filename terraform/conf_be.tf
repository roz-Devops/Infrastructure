terraform {
    backend "remote" {
        organization = "devops-proj" # org name from step 2.
        workspaces {
            name = "my-app" # name for your app's state.
        }
    }
}
