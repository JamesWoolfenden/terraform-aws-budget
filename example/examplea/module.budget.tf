module "budget" {
  source            = "../../"
  limit             = var.limit
  time_period_start = var.time_period_start
  budget            = var.budget
  notification      = var.notification
  cost_filters      = var.cost_filters
}
