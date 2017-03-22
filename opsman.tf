# Create OpsMan instance
resource "aws_instance" "opsmman_az1" {
    ami = "${var.opsman_ami}"
    availability_zone = "${var.az1}"
    instance_type = "${var.opsman_instance_type}"
    key_name = "${var.aws_key_name}"
    vpc_security_group_ids = ["${var.directorSG}"]
    subnet_id = "${var.PcfVpcPublicSubnet_az1}"
    associate_public_ip_address = true
    root_block_device {
        volume_size = 100
    }
  tags {
      Name = "${var.environment}-OpsMan"
  }
}
