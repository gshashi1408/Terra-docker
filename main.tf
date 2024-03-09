resource "aws_instance" "Docker3" {
  ami           = "ami-03bb6d83c60fc5f7c"
  availability_zone = "ap-south-1a"
  instance_type = "t2.micro"
  key_name = "key2"
  user_data = <<-EOF
        #!/bin/bash
        sudo apt update -y
        sudo apt-get install -y \
        apt-transport-https \
        ca-certificates \
        curl \
        software-properties-common -y
        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
        sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" -y
        sudo apt update -y
        sudo apt-get install docker-ce
        sudo systemctl start docker
        sudo systemctl enable docker
        sudo chmod 777 /var/run/docker.sock
  EOF

  tags = {
    Name  = "Docker3"
    Location = "Mumbai"
  }

}
