variable "limit" {
  description = "Budget alarm limit"
  type        = "string"
}

variable "currency" {
  description = "Name of the currency the budget is in"
  type        = "string"
}

variable "time_unit" {
  description = "Units for time"
  type        = "string"
}

variable "time_period_start" {
  description = "Time to start"
  type        = "string"
}

# this is enables you to add dependancies
variable depends_on {
  default     = []
  description = "This is a way to make a module depends on, which isnt built in."
  type        = "list"
}
