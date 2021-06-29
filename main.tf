resource "aws_instance" "app_server" {
  count         = var.on == true ? 2 : 0
  ami           = var.ami
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
