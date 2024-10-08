# AWS learning

## Reference
[reference aws cli](https://awscli.amazonaws.com/v2/documentation/api/latest/index.html)  
[querying reference](https://docs.aws.amazon.com/cli/v1/userguide/cli-usage-filter.html#cli-usage-filter-resources)  
[JMES path](https://jmespath.org/)  
[JMES path doc](https://jmespath.org/specification.html#id20)  

## ch1 - gitpod

gp init = initiating startup config yaml for gitpod

gp env key=value

[installing aws-cli] (https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

AWS_CLI_AUTO_PROMPT=on-partial==> set up for auto fill

iam create cli user and get pass key to set cli user

https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html

aws sts get-caller-identity => checking current identity

## ch2  - S3

aws s3 commands

- aws s3 cp localuri S3uri=> uploading
- aws s3 rm s3fileuri => removing
- aws s3 rm s3bucketuri --recursive => remove all files in bucket
- aws s3 rb s3bucketuri => removing bucket **bucket need to be empty to delete**
- aws sync folder/ s3bucketuri => uploading all files from local folder

aws s3api commands
- aws s3api create-bucket --bucket bucket-name --region bucket-region => creating bucket in specific region
- aws s3api list-buckets ==> listing
- aws s3api list-buckets --query Buckets[].Name => query in s3
- aws s3api list-buckets --query "Buckets[?Name== 'aws-example-llo']"
- get-object => aws s3api get-object --bucket text-content --key dir/my_images.tar.bz2 my_images.tar.bz2
- put-object =>aws s3api put-object --bucket text-content --key dir-1/my_images.tar.bz2 --body my_images.tar.bz2
- list-objects => aws s3api list-objects --bucket aws-example-llo --prefix image/ --query Contents[].key