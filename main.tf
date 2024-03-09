resource "aws_instance" "Docker3" {
  ami           = "ami-03bb6d83c60fc5f7c"
  availability_zone = "ap-south-1a"
  instance_type = "t2.micro"
  key_name = "key2"
  user_data = file("docker-config.sh")

  tags = {
    Name  = "Docker3"
    Location = "Mumbai"
  }
}

output "public_ip" {
  value       = aws_instance.Docker3.public_ip
  description = "The public IP of the Instance"
}
