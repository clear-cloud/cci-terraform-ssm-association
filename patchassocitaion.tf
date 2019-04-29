#
# Create the association
#
resource "aws_ssm_association" "example" {
  name = "AWS-RunPatchBaseline"

  targets {
    key    = "InstanceIds"
    values = ["i-04872129d45e67a10"]
  }

  parameters {
    Operation = "Scan"
  }
}
