# Create Website 1

## Create a bucket

```sh
aws s3 mb s3://cors-fun-ab-36252
```

## Change block public access

```sh
aws s3api put-public-access-block \
--bucket cors-fun-ab-36252 \
--public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=false"
```

## Create a bucket policy

```sh
aws s3api put-bucket-policy --bucket cors-fun-ab-36252 --policy file://bucket-policy.json
```

## Turn on static website hosting

```sh
aws s3api put-bucket-website --bucket cors-fun-ab-36252 --website-configuration file://website.json
```

## Upload our index.html file and include a resource that would be cross-origin

aws s3 cp index.html s3://cors-fun-ab-36252

## View the website and see if the index.html is there.


It this for ca-central-1
http://cors-fun-ab-36252.s3-website.ca-central-1.amazonaws.com

Other regions might ue a hyphen instead
http://cors-fun-ab-36252.s3-website-ca-central-1.amazonaws.com

## Create API Gateway with mock response and then test the endpoint
>> create api gate way with restful api

curl -X POST -H "Content-Type: application/json" https://0gsxt547ej.execute-api.us-east-1.amazonaws.com/prod/hello


## Set CORS on our bucket

aws s3api put-bucket-cors --bucket cors-fun-ab-36252 --cors-configuration file://cors.json

## Clean Up

aws s3 rm s3://cors-fun-ab-36252/index.html
aws s3 rb s3://cors-fun-ab-36252