#
# RunPatchBaseline - Scan once per day
#
resource "aws_ssm_association" "association" {
  name = "AWS-RunPatchBaseline"

  targets {
    key    = "tag:${var.target_tag_key}"
    values = ["${var.target_tag_values}"]
  }

  schedule_expression = "00 13 * * *"

  parameters {
    Operation = "Scan"
  }
}

