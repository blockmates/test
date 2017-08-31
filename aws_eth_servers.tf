resource "aws_lightsail_instance" "Ethereum_Master" {
  name              = "master"
  availability_zone = "eu-central-1a"
  blueprint_id      = "ubuntu_16_04"
  bundle_id         = "nano_1_0"
} 

resource "aws_lightsail_instance" "Ethereum_Slave" {
  name              = "slave"
  availability_zone = "eu-central-1a"
  blueprint_id      = "ubuntu_16_04"
  bundle_id         = "nano_1_0"
} 

module "consul" {
  source = "github.com/hashicorp/consul/terraform/aws"
  }
