variable "instance_type" {
  description = "The type of EC2 instance to launch"
  default     = "t2.micro"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = var.instance_type
}

output "instance_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_instance.example.public_ip
}
