output "budget" {
  value = try(aws_budgets_budget.budget[0])
}

output "half_budget" {
  value = try(aws_budgets_budget.budget[1])
}
