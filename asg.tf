# Launch config
resource "aws_launch_configuration" "main" {
  name_prefix     = "${var.resource_name}-"
  image_id        = data.aws_ami.amazon-linux-2.id
  instance_type   = var.instance_type
  security_groups = [aws_security_group.asg.id]
  user_data       = file("ec2.userdata")

  lifecycle {
    create_before_destroy = true
  }
}

#Auto scaling group
resource "aws_autoscaling_group" "main" {
  name_prefix          = "${var.resource_name}-"
  launch_configuration = aws_launch_configuration.main.id
  vpc_zone_identifier  = [aws_subnet.private_1.id, aws_subnet.private_2.id]
  target_group_arns    = [aws_lb_target_group.main.arn]
  health_check_type    = "ELB"
  desired_capacity     = 2
  min_size             = 2
  max_size             = 2

  lifecycle {
    create_before_destroy = true
  }

  tag {
    key                 = "Name"
    value               = var.resource_name
    propagate_at_launch = true
  }
}
