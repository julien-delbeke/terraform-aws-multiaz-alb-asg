output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "dns" {
  value = aws_lb.main.dns_name
}
