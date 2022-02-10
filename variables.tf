variable "limit" {
  description = "Budget alarm limit"
  type        = number
}

variable "time_period_start" {
  description = "Time to start"
  type        = string
}

variable "budget" {
  description = "Basic Budget Properties"
  type        = map(any)
  default = {
    name        = "budget-ec2-monthly"
    budget_type = "COST"
    time_unit   = "MONTHLY"
    limit_unit  = "USD"
  }
}

variable "notification" {
  description = "Budget notification properties"
  type = object({
    comparison_operator        = string
    threshold                  = number
    threshold_type             = string
    notification_type          = string
    subscriber_email_addresses = set(any)
    subscriber_sns_topic_arns  = set(any)
  })
}

variable "cost_filters" {
  description = "The Budget filters to use"
  type        = map(any)
  default     = null
}

variable "half_budget_enabled" {
  description = "Whether to enable or disable the half budget alert"
  type        = bool
  default     = true
}
