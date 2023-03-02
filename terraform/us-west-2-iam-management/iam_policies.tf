#iam_policy for new employee
resource "aws_iam_policy" "newemp_policy" {
    name ="new-employee-policy"
    path = "/"
    description = "This policy is for any new Joinee who gets onboarded"
    policy = jsonencode({
        "Version": "2012-10-17",
            "Statement": [
                {
                    "Effect": "Allow",
                    "Action": "s3:*",
                    "Resource": [
                        "arn:aws:s3:::demo-bucket-*",
                        "arn:aws:s3:::demo-bucket-*/*"
                    ]
                }
            ]
    })
    
}

output "iam_policy_newemp_policy_name" {
  value = aws_iam_policy.newemp_policy.name
}

output "iam_policy_newemp_policy_arn" {
  value = aws_iam_policy.newemp_policy.arn
}