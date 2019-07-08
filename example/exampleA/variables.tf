variable "limit" {
  description = "Budget alarm limit"
  type        = number
}

variable "currency" {
  description = "Name of the currency the budget is in"
  type        = string
}

variable "time_unit" {
  description = "Units for time"
  type        = string
}

variable "time_period_start" {
  description = "Time to start"
  type        = string
}
