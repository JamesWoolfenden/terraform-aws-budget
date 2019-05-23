resource "aws_budgets_budget" "ec2" {
  name              = "budget-ec2-monthly"
  budget_type       = "COST"
  limit_amount      = var.limit
  limit_unit        = var.currency
  time_unit         = "MONTHLY"
  time_period_start = var.time_period_start

  cost_filters = {
    Service = "Amazon Elastic Compute Cloud - Compute"
  }
}
