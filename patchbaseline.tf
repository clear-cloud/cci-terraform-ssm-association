#
# Patch Baseline for RHEL
#
resource "aws_ssm_patch_baseline" "pbrhel" {
  name = "${var.account_id}_${var.environment}_${var.target_tag_key}_${var.target_tag_values}_tf_rhel_patch-baseline"

  operating_system = "REDHAT_ENTERPRISE_LINUX"

  approval_rule {
    approve_after_days = 7
    compliance_level   = "HIGH"

    patch_filter {
      key    = "CLASSIFICATION"
      values = ["Security", "Recommended"]
    }
  }
}

#
# Patch Baseline for CentOSS
#
resource "aws_ssm_patch_baseline" "pbcentos" {
  name = "${var.account_id}_${var.environment}_${var.target_tag_key}_${var.target_tag_values}_tf_centos_patch-baseline"

  operating_system = "CENTOS"

  approval_rule {
    approve_after_days = 7
    compliance_level   = "HIGH"

    patch_filter {
      key    = "CLASSIFICATION"
      values = ["Security", "Recommended"]
    }
  }
}
