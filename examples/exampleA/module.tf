module "budget" {
  source   = "../../"
  limit    = "${var.limit}"
  currency = "${var.currency}"
}
