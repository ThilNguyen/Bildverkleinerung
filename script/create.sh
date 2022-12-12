#!/bin/bash

bucket_name=`cat.config.json | jq '.bucket_name' | tr -d '"'`
lambda_name=`cat config.json | jq '.lambda_name' | tr -d '"'`
statement_id=`cat config.json | jq 'statement_id' | tr -d '"'`
bucket_arn="arn:aws:s3:::${bucket_name}"

echo "Create bucket: ${bucket_name} with ${bucket_arn}"
aws s3 mb s3://${bucket_name}

echo "Create bucket: ${bucket_name} with ${bucket_arn}"
aws s3 mb s3://${bucket_name}

echo "Create lambda function: ${lambda_name}"
zip lambda_function.zip lambda_function.js
lambda_arn=`aws lambda create-function --memory-size 128 --function-name ${lambda_name}` 
echo ${lambda_arn}
