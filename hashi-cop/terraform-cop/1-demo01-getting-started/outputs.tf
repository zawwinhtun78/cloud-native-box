# Output - heartworks-nonprod

output "heartworks-nonprod-calleridentity-info" {
  value = data.aws_caller_identity.heartworks-nonprod-calleridentity
}

output "heartworks-nonprod-vpc-info" {
  value = data.aws_vpc.heartworks-nonprod-vpc
}

output "heartworks-nonprod-azs-info" {
  value = data.aws_availability_zones.heartworks-nonprod-azs
}

# Output - heartworks-dev

output "heartworks-dev-calleridentity-info" {
  value = data.aws_caller_identity.heartworks-dev-calleridentity
}

output "heartworks-dev-vpc-info" {
  value = data.aws_vpc.heartworks-dev-vpc
}

output "heartworks-dev-azs-info" {
  value = data.aws_availability_zones.heartworks-dev-azs
}

# Output - heartworks-security

output "heartworks-security-calleridentity-info" {
  value = data.aws_caller_identity.heartworks-security-calleridentity
}

output "heartworks-security-vpc-info" {
  value = data.aws_vpc.heartworks-security-vpc
}

output "heartworks-security-azs-info" {
  value = data.aws_availability_zones.heartworks-security-azs
}