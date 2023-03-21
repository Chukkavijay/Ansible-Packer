terraform {
  backend "s3" {
    bucket = "devopsbterraform"
    key    = "ansible.tfstate"
    region = "us-east-1"
  }
}
