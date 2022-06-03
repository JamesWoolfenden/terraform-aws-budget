limit             = "100"
time_period_start = "2020-01-01_12:00"
time_unit         = "MONTHLY"
budget = {
  name        = "budget-monthly"
  budget_type = "COST"
  time_unit   = "MONTHLY"
  limit_unit  = "USD"
}
notification = {
  comparison_operator        = "GREATER_THAN"
  threshold                  = 100
  threshold_type             = "PERCENTAGE"
  notification_type          = "FORECASTED"
  subscriber_email_addresses = ["james.woolfended@gmail.com"]
  subscriber_sns_topic_arns  = []
}

//cost_filters = {}
