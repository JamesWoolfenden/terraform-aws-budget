module "budget" {
  source            = "JamesWoolfenden/budget/aws"
  version           = "0.0.2"
  limit             = "${var.limit}"
  currency          = "${var.currency}"
  time_period_start = "${var.time_period_start}"
  time_unit         = "${var.time_unit}"
}
