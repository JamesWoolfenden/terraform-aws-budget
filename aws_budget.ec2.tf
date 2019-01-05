resource "aws_budgets_budget" "ec2" {
  name              = "budget-ec2-monthly"
  budget_type       = "COST"
  limit_amount      = "${var.limit}"
  limit_unit        = "${var.currency}"
  time_unit         = "MONTHLY"
  time_period_start = "2018-06-01_12:00"

  cost_filters {
    Service = "Amazon Elastic Compute Cloud - Compute"
  }
}
