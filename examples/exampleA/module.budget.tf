module "budget" {
  source            = "../../"
  limit             = "${var.limit}"
  currency          = "${var.currency}"
  time_period_start = "${var.time_period_start}"
  time_unit         = "${var.time_unit}"
}
