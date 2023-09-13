module "example" {
  source        = "./4-module"
  instance_type = "t2.micro"
}

output "instance_ip" {
  description = "The public IP of the EC2 instance"
  value       = module.example.instance_ip
}
