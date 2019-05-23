resource "aws_budgets_budget" "ec2-half" {
  budget_type       = "COST"
  limit_amount      = var.limit / 2
  limit_unit        = var.currency
  name              = "half-budget-ec2-monthly"
  time_period_start = var.time_period_start
  time_unit         = "MONTHLY"

  cost_filters = {
    Service = "Amazon Elastic Compute Cloud - Compute"
  }
}
