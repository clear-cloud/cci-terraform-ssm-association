#
# RunPatchBaseline - Scan once per day
#
resource "aws_ssm_association" "patchbaseline" {
  name = "AWS-RunPatchBaseline"
  association_name = "${var.environment}_tf_${var.target_tag_key}_${var.target_tag_values}_Scan"

  targets {
    key    = "tag:${var.target_tag_key}"
    values = ["${var.target_tag_values}"]
  }

  schedule_expression = "cron(01 13 ? * * *)"

  parameters {
    Operation = "Scan"
  }
}

#
# ApplyPatchBaseline
#
resource "aws_ssm_association" "applypatchbaseline" {
  name = "AWS-RunPatchBaseline"
  association_name = "${var.environment}_tf_${var.target_tag_key}_${var.target_tag_values}_Install"

  targets {
    key    = "tag:${var.target_tag_key}"
    values = ["${var.target_tag_values}"]
  }

  schedule_expression = "${var.install_schedule_expression}"

  parameters {
    Operation = "Install"
  }
}

