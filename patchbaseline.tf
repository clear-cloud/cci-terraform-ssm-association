resource "aws_ssm_patch_baseline" "production" {
  name             = "patch-baseline"


    approval_rule {
    approve_after_days = 7
    compliance_level   = "HIGH"

    patch_filter {
      key    = "CLASSIFICATION"
      values = ["CriticalUpdates", "SecurityUpdates"]
    }

   }

}
