resource "aws_instance" "Webserver" {
  ami           = "ami-019715e0d74f695be"
  instance_type = "t2.micro"

  tags = {
    Name = "DockerHost"
  }
}

resource "aws_s3_bucket" "Docker" {
  bucket = "akshay120198-docker-bucket-2024"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_instance" "TestServer" {
  ami           = "ami-019715e0d74f695be"
  instance_type = "t2.micro"

  tags = {
    Name = "JenkinsHost"
  }
}
