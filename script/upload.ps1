#!/bin/bash

bucket_name=`cat config.json | jq '.bucket_name' | tr -d '"'`
bucket_arn="arn:aws:s3:::${bucket_name}"
image_name="sample-image.png"

echo "Upload file ${image_name} ..."
aws s3 cp ${image_name} s3://${bucket_name}