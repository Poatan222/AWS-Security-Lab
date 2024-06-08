resource "aws_iam_user" "vulnerable_user" {
  name = "vulnerable-user-unique"  # Use a unique user name
}

resource "aws_iam_access_key" "vulnerable_access_key" {
  user = aws_iam_user.vulnerable_user.name
}

resource "aws_iam_user_policy" "vulnerable_policy" {
  name = "vulnerable-policy"
  user = aws_iam_user.vulnerable_user.name

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "*",
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
POLICY
}