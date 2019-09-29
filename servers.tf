
data "aws_ami" "ubuntu" {
   most_recent = true

    filter {
        name = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu*-amd64-*"]
    }

#    filter {
#        name = "virtualization-type"
#        values = ["hvm"]
#    }

    owners = ["099720109477"]
}

resource "aws_instance" "ubuntu-server" {

ami = "${data.aws_ami.ubuntu.id}"
instance_type = "t2.micro"

tags = {
    Name = "lil-ubuntu-server"
}
  subnet_id = "${aws_subnet.subnet2.id}"
}

