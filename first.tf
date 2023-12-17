provider "aws" {
  region  = "us-east-1"
}
resource "aws_instance" "name" {
    ami = "ami-053b0d53c279acc90"
    instance_type = "t2.micro"
    tags = {        
        Name = "tf-demo"
    } 
}
output "id" {
  value = aws_instance.name.id
}
