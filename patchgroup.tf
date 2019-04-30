#
# RHEL
#
resource "aws_ssm_patch_group" "pgpbrhel" {
  baseline_id = "${aws_ssm_patch_baseline.pbrhel.id}"
  patch_group = "${var.account_id}_${var.environment}_${var.target_tag_key}_${var.target_tag_values}_tf_rhel_patch_group"
}

#
# CentOS
#
resource "aws_ssm_patch_group" "pgcentos" {
  baseline_id = "${aws_ssm_patch_baseline.pbcentos.id}"
  patch_group = "${var.account_id}_${var.environment}_${var.target_tag_key}_${var.target_tag_values}_tf_centos_patch_group"
}
