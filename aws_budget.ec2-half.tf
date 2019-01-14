resource "aws_budgets_budget" "ec2-half" {
  name              = "half-budget-ec2-monthly"
  budget_type       = "COST"
  limit_amount      = "${var.limit/2}"
  limit_unit        = "${var.currency}"
  time_unit         = "MONTHLY"
  time_period_start = "${var.time_period_start}"

  cost_filters {
    Service = "Amazon Elastic Compute Cloud - Compute"
  }
}
