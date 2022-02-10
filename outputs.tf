output "budget" {
  value = aws_budgets_budget.budget[0]
}

output "half_budget" {
  value = aws_budgets_budget.budget[1]
}
