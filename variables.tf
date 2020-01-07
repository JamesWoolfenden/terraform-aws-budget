variable "limit" {
  description = "Budget alarm limit"
  type        = number
}

variable "time_period_start" {
  description = "Time to start"
  type        = string
}

variable "budget" {
  description="Basic Budget Properties"
  type=map
   default={
    name              = "budget-ec2-monthly"
    budget_type       = "COST"
    time_unit         = "MONTHLY"
    limit_unit        = "USD"
   }
}

variable "notification" {
  description="Budget notification properties"
}
