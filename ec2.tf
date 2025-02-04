resource "aws_instance" "this" {
  ami                         = var.ami_id
  vpc_security_group_ids      = [var.sg_id]
  instance_type               = var.instance_type
  subnet_id                   =  var.subnet_id/* if you don't have default subnet mentoin like this or else no need to give it takes default */
  associate_public_ip_address = true /* if it doesnot show public ip after ceartion of ec2-instance keep this as true */
  tags = var.tags
}