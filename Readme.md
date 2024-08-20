# AWS learning
[reference aws cli](https://awscli.amazonaws.com/v2/documentation/api/latest/index.html)

## ch1 - gitpod

gp init = initiating startup config yaml for gitpod

gp env key=value

[installing aws-cli] (https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

AWS_CLI_AUTO_PROMPT=on-partial==> set up for auto fill

iam create cli user and get pass key to set cli user

https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html

aws sts get-caller-identity => checking current identity

# ch2  - S3

aws s3 commands

aws s3 cp localuri S3uri=> uploading
aws s3 rm s3fileuri => removing
aws s3 rm s3bucketuri --recursive => remove all files in bucket
aws s3 rb s3bucketuri => removing bucket **bucket need to be empty to delete

aws s3api create-bucket --bucket bucket-name --region bucket-region => creating bucket in specific region
aws s3api list-buckets ==> listing
aws s3api list-buckets --query Buckets[].Name => query in s3