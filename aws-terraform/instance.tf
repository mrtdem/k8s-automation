provider "aws" {
    #access and secret keys come from environment variable
    #AWS_ACCESS_KEY_ID  AWS_SECRET_ACCESS_KEY
    region = "eu-central-1"
}

resource "aws_instance" "example" {
    ami = "ami-00d5e377dd7fad751"
    instance_type = "t2.micro"
}