variable "install_schedule_expression" {
  description = "defines the cron for installing patch baseline"
  default = "cron(0 8 ? * Mon *)"
}
variable "target_tag_key" {}
variable "target_tag_values" {}
variable "account_id" {}
variable "environment" {}
