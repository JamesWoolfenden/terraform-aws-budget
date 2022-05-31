output "budget" {
  value = try(aws_budgets_budget.budget[0], null)
}

output "half_budget" {
  value = try(aws_budgets_budget.budget[1], null)
}
