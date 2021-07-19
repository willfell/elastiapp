# output "vpc_id" {
#   value = aws_vpc.vpc.id
# }
# output "public_subnets" {
#   value = ["${aws_subnet.subnet_public.id}"]
# }
# output "ec2keyName" {
#   value = aws_key_pair.ec2key.key_name
# }


output "beans_env_id" {
  value = aws_elastic_beanstalk_environment.beans_env.id
}

output "beans_env_name" {
  value = aws_elastic_beanstalk_environment.beans_env.name
}

output "beans_env_cname" {
  value = aws_elastic_beanstalk_environment.beans_env.cname
}

output "beans_env_instances" {
  value = aws_elastic_beanstalk_environment.beans_env.instances
}

output "beans_env_tier" {
  value = aws_elastic_beanstalk_environment.beans_env.tier
}
