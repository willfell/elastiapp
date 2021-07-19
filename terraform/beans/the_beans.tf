provider "aws" {
  access_key              = var.access_key
  secret_key              = var.secret_key
  region                  = var.region
  shared_credentials_file = "/Users/will/.aws/credentials"
}

#resources
resource "aws_elastic_beanstalk_application" "beans_app" {
  name        = "node_app"
  description = "tf-test-desc"
}

resource "aws_elastic_beanstalk_environment" "beans_env" {
  name                = "node-environment"
  application         = aws_elastic_beanstalk_application.beans_app.name
  solution_stack_name = var.solution_stack
  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "IamInstanceProfile"
    value     = "aws-elasticbeanstalk-ec2-role"
  }
}
