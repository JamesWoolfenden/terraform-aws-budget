module "budget" {
  source            = "github.com/jameswoolfenden/terraform-aws-budget"
  limit             = "${var.limit}"
  currency          = "${var.currency}"
  time_period_start = "${var.time_period_start}"
  time_unit         = "${var.time_unit}"
}
