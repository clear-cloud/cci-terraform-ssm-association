#
# RHEL
#
resource "aws_ssm_patch_group" "pgpbrhel" {
  baseline_id = "${aws_ssm_patch_baseline.pbrhel.id}"
  patch_group = "${var.account_id}_${var.environment}_terraform_rhel_patch-group"
}

#
# CentOS
#
resource "aws_ssm_patch_group" "pgcentos" {
  baseline_id = "${aws_ssm_patch_baseline.pbcentos.id}"
  patch_group = "${var.account_id}_${var.environment}_terraform_centos_patch-group"
}
