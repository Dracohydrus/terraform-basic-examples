resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
    # You could also add things like
    # environment = "dev"
    # project     = "terraform"
  }
}

resource "aws_instance" "web2" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  provider      = aws.ca-central-1

  tags = {
    Name = "HelloWorld2"
  }
}
