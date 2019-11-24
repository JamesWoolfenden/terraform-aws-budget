output "ec2_budget" {
  value = aws_budgets_budget.ec2
}

output "ec2_half_budget" {
  value = aws_budgets_budget.ec2-half
}
