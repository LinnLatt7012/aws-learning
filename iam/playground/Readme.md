aws iam create-policy-version \
--policy-arn arn:aws:iam::982383527471:policy/my-fun-policy \
--policy-document "$(yq -o json policy.yml)" \
--set-as-default

aws iam create-policy \
--policy-name my-fun-policy \
--policy-document "$(yq -o json policy.yml)"

aws iam attach-user-policy \
--policy-arn arn:aws:iam::861276108927:policy/my-fun-policy  \
--user-name aws-examples