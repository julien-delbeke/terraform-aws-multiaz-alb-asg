## Terraform AWS Multi-AZ ALB ASG
AWS VPC spanning 2 AZs with both public and private subnets. An internet gateway and NAT gateway will be deployed into it. Public and private route tables will be established. An application load balancer (ALB) will be installed which will load balance traffic across an auto scaling group (ASG) of Nginx web servers. Security groups will be created and deployed to secure all network traffic between the components.


![AWS Architecture](AWS-VPC-ASG-Nginx.png)