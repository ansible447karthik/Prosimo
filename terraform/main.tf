provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "ansible_node" {
  count         = 5
  ami           = "ami-0ac67a26390dc374d"
  instance_type = "t3.micro"
  subnet_id     = "subnet-046ea3fb42c11e916"
  key_name      = "EU_WEST_WebSvcsDev"
  tags = {
    ManagedBy = "Ansible"
  }
}
