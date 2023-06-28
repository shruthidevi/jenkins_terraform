module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "Jenkins-instance-2"
  ami  = "ami-0aeea5e3528304b0d"
  instance_type          = "t2.small"
  key_name               = "vinod_2023_june"
  monitoring             = true
  vpc_security_group_ids = ["sg-004007df438b356e6"]
  user_data = file("Jenkins.sh")
}
