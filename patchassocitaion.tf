#
# Create the association
#
resource "aws_ssm_association" "association" {
  name = "AWS-RunPatchBaseline"

  targets {
    key    = "tag:${var.target_tag_key}"
    values = ["${var.target_tag_values}"]
  }

  parameters {
    Operation = "Scan"
  }
}

