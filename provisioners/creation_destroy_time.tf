resource "aws_instance" "ec2_for_provisioner_types" {
  ami           = "ami-08e4e35cccc6189f4"
  instance_type = "t2.micro"
  key_name      = "terraform"

  provisioner "remote-exec" {
    inline = [
      "sudo yum install -y nano"
    ]
  }

  provisioner "remote-exec" {
    when = destroy
    inline = [
      "sudo yum remove -y nano"
    ]
  }

  connection {
    type        = "ssh"
    user        = "ec2-user"
    host        = self.public_ip
    private_key = file("./terraform.pem")
  }
}
