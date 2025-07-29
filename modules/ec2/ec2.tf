resource "aws_instance" "web" {
  ami                         = var.ami
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  tags                        = var.tags
  associate_public_ip_address = var.associate_public_ip_address
  availability_zone           = var.availability_zone != "" ? var.availability_zone : null
  ipv6_address_count          = var.enable_ipv6 ? var.ipv6_address_count : null
  key_name = var.key_name != "" ? var.key_name : null
  vpc_security_group_ids = [var.security_group_id]
   root_block_device {
    volume_size = var.volume_size           # tamanho em GB
    volume_type = var.volume_type        # opcional: pode ser gp2, gp3, io1, etc.
    delete_on_termination = var.delete_on_termination
  }
  user_data = var.user_data != "" ? var.user_data : null
}

