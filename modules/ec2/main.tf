resource "aws_instance" "main" {
  ami           = var.ami_id
  instance_type = var.instance_type

  subnet_id = var.subnet_ids[0]

  vpc_security_group_ids = var.security_group_ids

  key_name = var.key_name

  count = length(var.subnet_ids)

  tags = {
    Name = "test-instance-${count.index}"
  }

  user_data = base64encode(<<-EOF
            #!/bin/bash
            sudo apt-get update
            sudo apt-get install -y
    nginx
        echo "<html><body><h1>Hello, World! from subnet ${var.subnet_ids[count.index]}</h1></body></html>" > /var/www/html/index.html
            sudo systemctl start
    nginx
            EOF
  )
}
