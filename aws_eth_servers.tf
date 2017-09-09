resource "aws_lightsail_instance" "Ethereum_Master" {
  name              = "master"
  availability_zone = "eu-central-1a"
  blueprint_id      = "ubuntu_16_04"
  bundle_id         = "nano_1_0"
} 

resource "aws_lightsail_instance" "Ethereum_Slave1" {
  name              = "slave1"
  availability_zone = "eu-central-1a"
  blueprint_id      = "ubuntu_16_04"
  bundle_id         = "nano_1_0"
} 

resource "aws_lightsail_instance" "Ethereum_Slave2" {
  name              = "slave2"
  availability_zone = "eu-central-1a"
  blueprint_id      = "ubuntu_16_04"
  bundle_id         = "nano_1_0"
}

resource "aws_lightsail_instance" "Ethereum_Slave3" {
  name              = "slave3"
  availability_zone = "eu-central-1a"
  blueprint_id      = "ubuntu_16_04"
  bundle_id         = "nano_1_0"
}
