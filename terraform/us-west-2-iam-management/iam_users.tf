
#iam_users/bisshwajit_samanta.tf
resource "aws_iam_user" "bisshwajit_samanta"{
    name = "bisshwajit_samanta"
    path = "/"
    force_destroy = true
    tags = {
        group = "admin-users"
    }
}

resource "aws_iam_policy_attachment" "devops_bisshwajit_samanta" {
  name = "devops-policy"
  users = [aws_iam_user.bisshwajit_samanta.name]
  policy_arn = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:policy/${aws_iam_policy.newemp_policy.name}"
  
}

resource "aws_iam_user" "abhinay_sagar"{
    name = "abhinay_sagar"
    path = "/"
    force_destroy = true
    tags = {
        group = "new-joiners"
    }
}

output "iam_user_bisshwajit_samanta" {
  value = aws_iam_user.bisshwajit_samanta.name
}

output "iam_user_abhinay_sagar" {
  value = aws_iam_user.abhinay_sagar.name
}