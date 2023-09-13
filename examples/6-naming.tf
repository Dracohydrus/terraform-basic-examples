resource "aws_api_gateway_domain_name" "api_domain_name" {
  domain_name     = "api.example.com"
  certificate_arn = "arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012"
  endpoint_configuration {
    types = ["REGIONAL"]
  }
}

resource "aws_api_gateway_base_path_mapping" "api_mapping" {
  # You can see how repeditive this is getting
  domain_name = aws_api_gateway_domain_name.api_domain_name.domain_name
}
