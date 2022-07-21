resource "aws_budgets_budget" "budget" {
  count             = var.half_budget_enabled ? 2 : 1
  name              = count.index == 1 ? format("half-%s", var.budget["name"]) : var.budget["name"]
  budget_type       = var.budget["budget_type"]
  limit_amount      = count.index == 1 ? tostring(var.limit / 2) : tostring(var.limit)
  limit_unit        = var.budget["limit_unit"]
  time_unit         = var.budget["time_unit"]
  time_period_start = var.time_period_start

  dynamic "cost_filter" {
    for_each = toset(var.cost_filters)
    content {
      name   = cost_filter.value.name
      values = cost_filter.value.values
    }
  }

  notification {
    comparison_operator        = var.notification["comparison_operator"]
    threshold                  = var.notification["threshold"]
    threshold_type             = var.notification["threshold_type"]
    notification_type          = var.notification["notification_type"]
    subscriber_email_addresses = var.notification["subscriber_email_addresses"]
    subscriber_sns_topic_arns  = var.notification["subscriber_sns_topic_arns"]
  }
}
