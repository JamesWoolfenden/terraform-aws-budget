resource "aws_budgets_budget" "full" {
  name              = var.budget["name"]
  budget_type       = var.budget["budget_type"]
  limit_amount      = var.limit
  limit_unit        = var.budget["limit_unit"]
  time_unit         = var.budget["time_unit"]
  time_period_start = var.time_period_start

  cost_filters = var.cost_filters

  notification {
    comparison_operator        = var.notification["comparison_operator"]
    threshold                  = var.notification["threshold"]
    threshold_type             = var.notification["threshold_type"]
    notification_type          = var.notification["notification_type"]
    subscriber_email_addresses = var.notification["subscriber_email_addresses"]
    subscriber_sns_topic_arns  = var.notification["subscriber_sns_topic_arns"]
  }
}
