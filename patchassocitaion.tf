#
# RunPatchBaseline - Scan once per day
#
resource "aws_ssm_association" "patchbaseline" {
  name = "AWS-RunPatchBaseline"

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
resource "aws_ssm_association" "patchbaseline" {
  name = "AWS-RunPatchBaseline"

  targets {
    key    = "tag:${var.target_tag_key}"
    values = ["${var.target_tag_values}"]
  }

  schedule_expression = ""

  parameters {
    Operation = "Scan"
  }
}

