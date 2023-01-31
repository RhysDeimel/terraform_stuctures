resource "aws_iam_role" "external_audit" {
  name               = "external_audit"
  assume_role_policy = data.aws_iam_policy_document.external_audit_assume.json
}

resource "aws_iam_policy" "external_audit" {
  name        = "external_audit"
  description = "external_audit Policy"
  policy      = data.aws_iam_policy_document.external_audit_permissions.json
}

resource "aws_iam_policy_attachment" "external_audit" {
  name       = "external_audit-policy-attachment"
  policy_arn = aws_iam_policy.external_audit.arn
  roles      = [aws_iam_role.external_audit.name]
}
