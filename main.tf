resource "aws_instance" "Docker2" {
  ami           = "ami-03bb6d83c60fc5f7c"
  availability_zone = "ap-south-1a"
  instance_type = "t2.micro"
  key_name = "key2"
  user_data = filebase64("docker_config.sh")
  tags = {
    Name  = "Docker2"
    Location = "Mumbai"
  }

}
