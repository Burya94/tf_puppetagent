data "aws_ami" "centos7"{
  most_recent = true

  filter {
    name  = "name"
    values = ["RHEL-7.3_HVM-20170613-x86_64*"]
  }

  filter {
    name  = "virtualization-type"
    values = ["hvm"]
  }
}

data "template_file" "userdata" {
  template = "${file("${path.module}/${var.path_to_file}")}"

  vars {
    dns_name = "${var.puppetmaster_dns}"
  }
}

resource "aws_instance" "puppetagent" {
  count             = 1
  key_name          = "${var.key_name}"
  ami               = "${data.aws_ami.centos7.id}"
  instance_type     = "${var.instype}"
  user_data         = "${data.template_file.userdata.rendered}"
  subnet_id         = "${var.subnet_id}"

  tags {
    Name = "Puppet Agent"
  }
}
