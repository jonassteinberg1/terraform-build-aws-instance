resource "aws_instance" "app_server" {
  count         = var.on == true ? 2 : 0
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
