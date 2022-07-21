variable "limit" {
  description = "Budget alarm limit"
  type        = number
}

variable "time_unit" {
  description = "Units for time"
  type        = string
}

variable "time_period_start" {
  description = "Time to start"
  type        = string
}

variable "budget" {
  description = "Basic Budget Properties"
  type        = map(any)
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
  type = list(object({
    name   = string
    values = set(string)
  }))
  default = []
}
