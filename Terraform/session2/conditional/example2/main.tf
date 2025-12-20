resource "aws_instance" "web" {
  count = var.enable_instance == true ? 1 : 0 # make sure that correct variables are in place to support the toggle
  ami           = var.environment == "prod" ? "ami-122" : "ami-322"
  instance_type = var.environment == "prod" ? "t3.micro" : "t2.micro"
  # expand the above condition for instance_type to do following:
  # if var.environment == "prod" then "provide value as t3.large"
  # if var.environment == "uat" then "provide value as t3.medium"
  # if var.environment == "dev" then "provide value as t3.micro"

  tags = {
    Name = "my-test-instance"
  }
}