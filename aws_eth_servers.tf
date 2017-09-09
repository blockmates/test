resource "aws_lightsail_instance" "Ethereum_Master" {
  name              = "master"
  availability_zone = "eu-central-1a"
  blueprint_id      = "ubuntu_16_04"
  bundle_id         = "nano_1_0"
  
   provisioner "file" {
    source      = "/mnt/c/setup.sh"
    destination = "/tmp/setup.sh"
  }
  
  connection {
    type     = "ssh"
    user     = "ubuntu"
    private_key = "${"file(/home/jp/.ssh/aws.pem")}"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /setup/script.sh",
      "/tmp/setup.sh args",
    ]
  }
} 
