# Data Source - heartworks-nonprod

data "aws_caller_identity" "heartworks_nonprod_calleridentity" {
  provider = aws.heartworks-nonprod
}

data "aws_vpc" "heartworks_nonprod_vpcc" {
  provider = aws.heartworks-nonprod
  default = "true" 
}

data "aws_availability_zones" "heartworks_nonprod_azs" {
  provider = aws.heartworks-nonprod
}

# Data Source - heartworks-dev

data "aws_caller_identity" "heartworks_dev_calleridentity" {
  provider = aws.heartworks-dev
}

data "aws_vpc" "heartworks_dev_vpcc" {
  provider = aws.heartworks-dev
  default = "true"
}

data "aws_availability_zones" "heartworks_dev_azs" {
  provider = aws.heartworks-dev
}

# Data Source - heartworks-security

data "aws_caller_identity" "heartworks_security_calleridentity" {
  provider = aws.heartworks-security
}

data "aws_vpc" "heartworks_security_vpcc" {
  provider = aws.heartworks-security
  default = "true"
}

data "aws_availability_zones" "heartworks_security_azs" {
  provider = aws.heartworks-security
}