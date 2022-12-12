#!/bin/bash

bucket_name=`cat.config.json | jq '.bucket_name' | tr -d '"'`
lambda_name=`cat config.json | jq '.lambda_name' | tr -d '"'`
statement_id=`cat config.json | jq 'statement_id' | tr -d '"'`

echo "Remove bucket: ${bucket_name}"
aws s3 rb s3://${bucket_name} --force

echo "Remove s3"   # weitermachen